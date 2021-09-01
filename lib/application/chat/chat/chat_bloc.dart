import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:reddit_clone/_presentation/chat/chat_page.dart';
import 'package:reddit_clone/utility/app_logger.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  late final IO.Socket socket;
  Timer? timer;

  ChatBloc() : super(ChatState.initial()) {
    log.i('ChatBloc created');
    _prepateSocket();
  }

  void _prepateSocket() {
    final options = OptionBuilder()
        .setTransports(['websocket'])
        .setExtraHeaders({'foo': 'bar'})
        .disableAutoConnect()
        .build();

    socket = IO.io('http://10.0.2.2:4000', options);
    socket.connect();
    socket.onConnect((_) => print('connect'));
    socket.on('messages_loaded', (messages) {
      print(messages);
      if (messages is List) {
        final chatMessages = messages
            .map(
              (e) => ChatMessage(
                text: e['text'],
                senderAvatar: e['user']['avatar'],
                sentAt:
                    // DateTime.now().toIso8601String(),
                    e['createdAt'].toString(),
                senderName: e['user']['name'],
              ),
            )
            .toList();
        add(ChatEvent.messagedLoaded(chatMessages));
      }
    });

    socket.on('typing', (data) => add(ChatEvent.theOtherTyped()));
    socket.on('message_sent', (message) {
      add(ChatEvent.messageSent());
    });
    socket.onDisconnect((data) => print('disconnected'));
    socket.emit('messages_requested', {'roomId': '612cc72f65a882665306cc0e'});
  }

  @override
  Future<void> close() {
    socket.close();
    return super.close();
  }

  @override
  Stream<ChatState> mapEventToState(
    ChatEvent event,
  ) async* {
    yield* event.map(
      emit: (e) async* {
        yield state.copyWith(user: !state.user);
      },
      messagedLoaded: (e) async* {
        yield state.copyWith(loading: true);
        await Future.delayed(Duration(milliseconds: 500));

        yield state.copyWith(
          messages: e.messages,
          loading: false,
        );
      },
      messageChanged: (e) async* {
        print('messageChanged');
        socket.emit('typing', true);
        yield state.copyWith(message: e.message);
      },
      messageSent: (e) async* {
        final messageText = state.message.trim();
        final message = makeMessage(text: messageText, user: state.user);
        socket.emit('message_sent',
            makeEmittedMessage(text: messageText, user: state.user));
        yield state
            .copyWith(message: '', messages: [...state.messages, message]);
      },
      theOtherTyped: (e) async* {
        yield state.copyWith(otherTyping: true);
        timer?.cancel();
        timer = Timer(Duration(seconds: 1), () {
          add(ChatEvent.typingSetFalse());
        });
      },
      typingSetFalse: (e) async* {
        yield state.copyWith(otherTyping: false);
      },
    );
  }

  final chatMessages = [
    ChatMessage(
      text: 'Nasilsin ne yapiyorsun?',
      senderAvatar: 'https://i.redd.it/fc9k38jwfwv51.png',
      sentAt: DateTime(2021, 8, 28, 9, 30, 34).toIso8601String(),
      senderName: 'Brilliant_Program232',
    ),
    ChatMessage(
      text: 'Heeey alooo',
      senderAvatar: 'https://i.redd.it/fc9k38jwfwv51.png',
      sentAt: DateTime(2021, 8, 28, 9, 40, 34).toIso8601String(),
      senderName: 'Brilliant_Program232',
    ),
    ChatMessage(
      text: 'isim vardi iyi iste sen nasilsin',
      senderAvatar: 'https://i.redd.it/26s9eejm8vz51.png',
      sentAt: DateTime(2021, 8, 28, 9, 41, 34).toIso8601String(),
      senderName: 'Jeddi',
    ),
    ChatMessage(
      text: 'iyi iste ya bir sorayim dedim ozledim',
      senderAvatar: 'https://i.redd.it/fc9k38jwfwv51.png',
      sentAt: DateTime(2021, 8, 28, 9, 41, 44).toIso8601String(),
      senderName: 'Brilliant_Program232',
    ),
  ];
}

ChatMessage makeMessage({required String text, bool user = false}) => !user
    ? ChatMessage(
        text: text,
        senderAvatar: 'https://i.redd.it/fc9k38jwfwv51.png',
        sentAt: DateTime.now().toIso8601String(),
        senderName: 'Brilliant_Program232',
      )
    : ChatMessage(
        text: text,
        senderAvatar: 'https://i.redd.it/26s9eejm8vz51.png',
        sentAt: DateTime.now().toIso8601String(),
        senderName: 'Jeddi',
      );

Map<String, dynamic> makeEmittedMessage(
        {required String text, bool user = false}) =>
    {
      'text': text,
      'roomId': '612cc72f65a882665306cc0e',
      'user': {
        'id': user ? '610d52b15d5e8b1ee8970cc7' : '611b951eb51a262e8c141226',
        'name': user ? 'Jeddi' : 'Brilliant_Program232',
        'avatar': user
            ? 'https://i.redd.it/26s9eejm8vz51.png'
            : 'https://i.redd.it/fc9k38jwfwv51.png',
      },
    };
