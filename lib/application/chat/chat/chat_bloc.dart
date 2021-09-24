import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_clone/utility/extract_option.dart';
import '../../../utility/log_init.dart';
import 'package:rxdart/rxdart.dart';

import '../../../_presentation/main_navigation_pages/chat/chat_page.dart';
import '../../../domain/core/constants/socket_event_keys.dart';
import '../../../domain/i_socket_manager.dart';
import '../../../infastructure/chat/chat_message_dto.dart';
import '../../../infastructure/chat/chat_messages_service.dart';
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
    registerEventHandlers();
    _prepareSocket();
  }

  void registerEventHandlers() {
    on<MessagesFetchingStarted>(_onMessagesFetchingStarted);
    on<LoadedMoreMessage>(_onLoadedMoreMessage);
    on<MessageSent>(_onMessageSent);
    on<MessageChanged>(_onMessageChanged);
    on<TheOtherTyped>(_onTheOtherTyped);
    on<TheOtherSentMessage>(_onTheOtherSentMessage);
    on<SignaledTyping>(
      _onSignaledTyping,
      transformer: throttle(Duration(seconds: 5)),
    );
    on<TypingSetFalse>(_onTypingSetFalse);
  }

  FutureOr<void> _onMessagesFetchingStarted(
    MessagesFetchingStarted event,
    Emitter<ChatState> emit,
  ) async {
    emit(state.copyWith(loading: true));
    final data =
        await chatMessagesService.find(limit: _postLimit, page: state.page);
    await Future.delayed(Duration(milliseconds: 500));

    data.fold(
      (l) => emit(state.copyWith(loading: false)),
      (data) => emit(
        state.copyWith(
          messages: data.messages,
          loading: false,
          fetchedAt: some(data.fetchedAt!),
          page: state.page + 1,
        ),
      ),
    );
  }

  FutureOr<void> _onLoadedMoreMessage(
    LoadedMoreMessage event,
    Emitter<ChatState> emit,
  ) async {
    final data = await chatMessagesService.find(
      limit: _postLimit,
      page: state.page,
      fetchedAt: extractOption(state.fetchedAt),
    );
    await Future.delayed(Duration(milliseconds: 500));
    data.fold(
      (l) => emit(state),
      (data) => emit(
        state.copyWith(
          messages: [
            ...state.messages,
            ...data.messages,
          ],
          page: state.page + 1,
        ),
      ),
    );
  }

  FutureOr<void> _onMessageSent(
    MessageSent event,
    Emitter<ChatState> emit,
  ) async {
    final messageText = state.message.trim();
    final message = makeMessage(text: messageText, user: state.user);
    final remoteMsg = makeEmittedMessage(text: messageText, user: state.user);
    socketManager.emit(
      SocketEventKeys.message_sent,
      remoteMsg,
    );
    final msg = ChatMessageDTO.fromJson(remoteMsg);
    emit(state.copyWith(
      message: '',
      messages: [msg, ...state.messages],
    ));
  }

  FutureOr<void> _onMessageChanged(
    MessageChanged event,
    Emitter<ChatState> emit,
  ) async {
    add(ChatEvent.signaledTyping());
    emit(state.copyWith(message: event.message));
  }

  FutureOr<void> _onTheOtherTyped(
    TheOtherTyped event,
    Emitter<ChatState> emit,
  ) async {
    emit(state.copyWith(otherTyping: true));
    timer?.cancel();
    timer = Timer(Duration(seconds: 6), () => add(ChatEvent.typingSetFalse()));
  }

  FutureOr<void> _onTheOtherSentMessage(
    TheOtherSentMessage event,
    Emitter<ChatState> emit,
  ) async {
    emit(state.copyWith(messages: [event.message, ...state.messages]));
  }

  FutureOr<void> _onSignaledTyping(
    SignaledTyping event,
    Emitter<ChatState> emit,
  ) {
    socketManager.emit(SocketEventKeys.typing, true);
    emit(state);
  }

  EventTransformer<SignaledTyping> throttle<SignaledTyping>(Duration duration) {
    return (events, mapper) => events.throttleTime(duration).flatMap(mapper);
  }

  FutureOr<void> _onTypingSetFalse(
    TypingSetFalse event,
    Emitter<ChatState> emit,
  ) async {
    emit(state.copyWith(otherTyping: false));
  }

  void _prepareSocket() {
    socketManager.onConnect((_) => print('connect'));
    socketManager.onDisconnect((data) => print('disconnected'));
    socketManager.on(SocketEventKeys.typing, _typingListener);
    socketManager.on(SocketEventKeys.message_sent, _messageSentListener);
    socketManager.emit(
      SocketEventKeys.join_room,
      {
        'userId': '61333e7c3e51246558fc1e11',
        'roomId': roomId,
      },
    );
  }

  dynamic _typingListener(dynamic data) => add(ChatEvent.theOtherTyped());
  dynamic _messageSentListener(message) =>
      add(ChatEvent.theOtherSentMessage(ChatMessageDTO.fromJson(message)));

  @override
  Future<void> close() {
    socketManager.off(SocketEventKeys.typing, _typingListener);
    socketManager.off(SocketEventKeys.message_sent, _messageSentListener);
    return super.close();
  }
}

// TODO: refactor
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
