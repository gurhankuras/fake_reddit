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

  ChatBloc() : super(ChatState.initial()) {
    log.i('ChatBloc created');
    final options = OptionBuilder()
        .setTransports(['websocket'])
        .setExtraHeaders({'foo': 'bar'})
        .disableAutoConnect()
        .build();

    socket = IO.io('http://10.0.2.2:4000', options);
    socket.connect();

    socket.onConnect((_) {
      print('connect');
      // socket.emit('demo', 'darttan geliyom abi');
    });
    socket.on('server', (data) => print(data));
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
        yield state.copyWith(loading: true);
        socket.emit('demo', 'darttan geliyom abi');
        yield state.copyWith(loading: false);
      },
      messagedLoaded: (e) async* {
        yield state.copyWith(loading: true);
        await Future.delayed(Duration(milliseconds: 500));

        yield state.copyWith(
          messages: chatMessages,
          loading: false,
        );
      },
      messageChanged: (e) async* {
        yield state.copyWith(message: e.message);
      },
      messageSent: (e) async* {
        final messageText = state.message.trim();
        final message = ChatMessage(
          text: messageText,
          senderAvatar: 'https://i.redd.it/fc9k38jwfwv51.png',
          sentAt: DateTime.now(),
          senderName: 'Brilliant_Program232',
        );
        socket.emit('demo', messageText);
        yield state
            .copyWith(message: '', messages: [...state.messages, message]);
      },
    );
  }

  final chatMessages = [
    ChatMessage(
      text: 'Nasilsin ne yapiyorsun?',
      senderAvatar: 'https://i.redd.it/fc9k38jwfwv51.png',
      sentAt: DateTime(2021, 8, 28, 9, 30, 34),
      senderName: 'Brilliant_Program232',
    ),
    ChatMessage(
      text: 'Heeey alooo',
      senderAvatar: 'https://i.redd.it/fc9k38jwfwv51.png',
      sentAt: DateTime(2021, 8, 28, 9, 40, 34),
      senderName: 'Brilliant_Program232',
    ),
    ChatMessage(
      text: 'isim vardi iyi iste sen nasilsin',
      senderAvatar: 'https://i.redd.it/26s9eejm8vz51.png',
      sentAt: DateTime(2021, 8, 28, 9, 41, 34),
      senderName: 'Jeddi',
    ),
    ChatMessage(
      text: 'iyi iste ya bir sorayim dedim ozledim',
      senderAvatar: 'https://i.redd.it/fc9k38jwfwv51.png',
      sentAt: DateTime(2021, 8, 28, 9, 41, 44),
      senderName: 'Brilliant_Program232',
    ),
  ];
}
