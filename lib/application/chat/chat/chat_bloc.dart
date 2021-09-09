import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_clone/domain/core/constants/socket_event_keys.dart';
import 'package:reddit_clone/domain/i_socket_manager.dart';
import 'package:reddit_clone/infastructure/chat/chat_message_dto.dart';

import 'package:reddit_clone/_presentation/main_navigation_pages/chat/chat_page.dart';
import 'package:reddit_clone/infastructure/chat/chat_messages_service.dart';
import 'package:reddit_clone/utility/app_logger.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ISocketManager socketManager;
  final IChatMessagesService chatMessagesService;
  Timer? timer;

  static const _postLimit = 20;
  ChatBloc({
    required this.chatMessagesService,
    required this.socketManager,
  }) : super(ChatState.initial()) {
    log.i('ChatBloc created');
    _prepareSocket();
  }

  void _prepareSocket() {
    socketManager.onConnect((_) => print('connect'));
    socketManager.onDisconnect((data) => print('disconnected'));
    socketManager.on(
        SocketEventKeys.typing, (data) => add(ChatEvent.theOtherTyped()));
    socketManager.on(
      SocketEventKeys.message_sent,
      (message) =>
          add(ChatEvent.theOtherSentMessage(ChatMessageDTO.fromJson(message))),
    );
    socketManager.emit(SocketEventKeys.join_room, {
      'userId': '61333e7c3e51246558fc1e11',
      'roomId': '612cc72f65a882665306cc0e'
    });
    // socketManager
    // .emit('messages_requested', {'roomId': '612cc72f65a882665306cc0e'});
  }

  @override
  Future<void> close() {
    // socket.close();
    return super.close();
  }

  // }

  @override
  Stream<ChatState> mapEventToState(
    ChatEvent event,
  ) async* {
    yield* event.map(
      emit: (e) async* {
        yield state.copyWith(user: !state.user);
      },
      messagesFetchingStarted: (e) async* {
        yield state.copyWith(loading: true);
        final messages =
            await chatMessagesService.find(limit: _postLimit, page: state.page);
        await Future.delayed(Duration(milliseconds: 500));
        yield* messages.fold(
          (l) async* {
            log.wtf(l);
            yield state.copyWith(loading: false);
          },
          (messages) async* {
            yield state.copyWith(
              messages: messages,
              loading: false,
              page: state.page + 1,
            );
          },
        );
      },
      messageChanged: (e) async* {
        print('messageChanged');
        socketManager.emit('typing', true);
        yield state.copyWith(message: e.message);
      },
      messageSent: (e) async* {
        final messageText = state.message.trim();
        final message = makeMessage(text: messageText, user: state.user);
        final remoteMsg =
            makeEmittedMessage(text: messageText, user: state.user);
        print(remoteMsg);
        socketManager.emit(
          'message_sent',
          remoteMsg,
        );
        final msg = ChatMessageDTO.fromJson(remoteMsg);
        yield state.copyWith(message: '', messages: [...state.messages, msg]);
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
      theOtherSentMessage: (e) async* {
        // final message = ChatMessage(
        //   text: e.message.text,
        //   senderAvatar: e.message.user.avatar,
        //   sentAt: DateTime.now().toIso8601String(),
        //   senderName: e.message['user']['name'],
        // );
        print('BURAYA GIRDI');
        yield state.copyWith(messages: [...state.messages, e.message]);
      },
      loadedMoreMessage: (e) async* {
        if (state.loadMore) {
          final messages = await chatMessagesService.find(
              limit: _postLimit, page: state.page);
          await Future.delayed(Duration(milliseconds: 500));
          yield* messages.fold(
            (l) async* {
              log.wtf(l);
              yield state;
            },
            (messages) async* {
              yield state.copyWith(
                messages: [...messages, ...state.messages],
                page: state.page + 1,
              );
            },
          );
        } else {
          yield state;
        }
      },
      toggleLoadMore: (e) async* {
        yield state.copyWith(loadMore: e.value);
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
      "text": text,
      "roomId": "612cc72f65a882665306cc0e",
      "user": {
        "id": user ? "610d52b15d5e8b1ee8970cc7" : "611b951eb51a262e8c141226",
        "name": user ? "Jeddi" : "Brilliant_Program232",
        "avatar": user
            ? "https://i.redd.it/26s9eejm8vz51.png"
            : "https://i.redd.it/fc9k38jwfwv51.png",
      },
    };
