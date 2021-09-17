import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_clone/utility/log_init.dart';
import 'package:rxdart/rxdart.dart';

import 'package:reddit_clone/_presentation/main_navigation_pages/chat/chat_page.dart';
import 'package:reddit_clone/domain/core/constants/socket_event_keys.dart';
import 'package:reddit_clone/domain/i_socket_manager.dart';
import 'package:reddit_clone/infastructure/chat/chat_message_dto.dart';
import 'package:reddit_clone/infastructure/chat/chat_messages_service.dart';
import 'package:reddit_clone/utility/app_logger.dart';
import 'package:injectable/injectable.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  static const _postLimit = 20;

  final String? roomId;
  final ISocketManager socketManager;
  final IChatMessagesService chatMessagesService;
  Timer? timer;

  ChatBloc({
    @factoryParam this.roomId,
    required this.socketManager,
    required this.chatMessagesService,
  }) : super(ChatState.initial()) {
    logInit(ChatBloc);
    _prepareSocket();
  }

  void _prepareSocket() {
    socketManager.onConnect((_) => print('connect'));
    socketManager.onDisconnect((data) => print('disconnected'));
    socketManager.on(SocketEventKeys.typing, _typingListener);
    socketManager.on(SocketEventKeys.message_sent, _messageSentListener);
    socketManager.emit(SocketEventKeys.join_room, {
      'userId': '61333e7c3e51246558fc1e11',
      'roomId': roomId,
    });
  }

  dynamic _typingListener(dynamic data) => add(ChatEvent.theOtherTyped());
  dynamic _messageSentListener(message) => add(
        ChatEvent.theOtherSentMessage(
          ChatMessageDTO.fromJson(message),
        ),
      );
  @override
  Future<void> close() {
    socketManager.off(SocketEventKeys.typing, _typingListener);
    socketManager.off(SocketEventKeys.message_sent, _messageSentListener);

    return super.close();
  }

  @override
  Stream<Transition<ChatEvent, ChatState>> transformEvents(
      Stream<ChatEvent> events,
      TransitionFunction<ChatEvent, ChatState> transitionFn) {
    final nonDebounceStream = events.where((event) => event is! SignaledTyping);

    final debounceStream = events
        .where((event) => event is SignaledTyping)
        .throttleTime(Duration(seconds: 5));

    return super.transformEvents(
        MergeStream([nonDebounceStream, debounceStream]), transitionFn);
  }

  @override
  Stream<ChatState> mapEventToState(
    ChatEvent event,
  ) async* {
    yield* event.map(
      signaledTyping: (e) async* {
        socketManager.emit(SocketEventKeys.typing, true);
        yield state;
      },
      messagesFetchingStarted: (e) async* {
        yield state.copyWith(loading: true);
        final data =
            await chatMessagesService.find(limit: _postLimit, page: state.page);
        await Future.delayed(Duration(milliseconds: 500));
        yield* data.fold(
          (l) async* {
            log.wtf(l);
            yield state.copyWith(loading: false);
          },
          (data) async* {
            yield state.copyWith(
              messages: data.messages,
              loading: false,
              fetchedAt: some(data.fetchedAt!),
              page: state.page + 1,
            );
          },
        );
      },
      messageChanged: (e) async* {
        add(ChatEvent.signaledTyping());
        yield state.copyWith(message: e.message);
      },
      messageSent: (e) async* {
        final messageText = state.message.trim();
        final message = makeMessage(text: messageText, user: state.user);
        final remoteMsg =
            makeEmittedMessage(text: messageText, user: state.user);
        socketManager.emit(
          SocketEventKeys.message_sent,
          remoteMsg,
        );
        final msg = ChatMessageDTO.fromJson(remoteMsg);
        yield state.copyWith(message: '', messages: [msg, ...state.messages]);
      },
      theOtherTyped: (e) async* {
        yield state.copyWith(otherTyping: true);
        timer?.cancel();
        timer = Timer(Duration(seconds: 6), () {
          add(ChatEvent.typingSetFalse());
        });
      },
      typingSetFalse: (e) async* {
        yield state.copyWith(otherTyping: false);
      },
      theOtherSentMessage: (e) async* {
        yield state.copyWith(messages: [e.message, ...state.messages]);
      },
      loadedMoreMessage: (e) async* {
        final data = await chatMessagesService.find(
          limit: _postLimit,
          page: state.page,
          fetchedAt: extractOption(state.fetchedAt),
        );
        await Future.delayed(Duration(milliseconds: 500));
        yield* data.fold(
          (l) async* {
            log.wtf(l);
            yield state;
          },
          (data) async* {
            final messages = data.messages;
            yield state.copyWith(
              messages: [
                ...state.messages,
                ...messages,
              ],
              page: state.page + 1,
            );
          },
        );
      },
    );
  }

  // final chatMessages = [
  //   ChatMessage(
  //     text: 'Nasilsin ne yapiyorsun?',
  //     senderAvatar: 'https://i.redd.it/fc9k38jwfwv51.png',
  //     sentAt: DateTime(2021, 8, 28, 9, 30, 34).toIso8601String(),
  //     senderName: 'Brilliant_Program232',
  //   ),
  //   ChatMessage(
  //     text: 'Heeey alooo',
  //     senderAvatar: 'https://i.redd.it/fc9k38jwfwv51.png',
  //     sentAt: DateTime(2021, 8, 28, 9, 40, 34).toIso8601String(),
  //     senderName: 'Brilliant_Program232',
  //   ),
  //   ChatMessage(
  //     text: 'isim vardi iyi iste sen nasilsin',
  //     senderAvatar: 'https://i.redd.it/26s9eejm8vz51.png',
  //     sentAt: DateTime(2021, 8, 28, 9, 41, 34).toIso8601String(),
  //     senderName: 'Jeddi',
  //   ),
  //   ChatMessage(
  //     text: 'iyi iste ya bir sorayim dedim ozledim',
  //     senderAvatar: 'https://i.redd.it/fc9k38jwfwv51.png',
  //     sentAt: DateTime(2021, 8, 28, 9, 41, 44).toIso8601String(),
  //     senderName: 'Brilliant_Program232',
  //   ),
  // ];
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

T extractOption<T>(Option<T> option) {
  return option.fold(
    () => throw Exception('Cannot extracted $T. Option is none'),
    (a) => a,
  );
}
