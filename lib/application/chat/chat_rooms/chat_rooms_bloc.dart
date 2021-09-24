import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/core/constants/socket_event_keys.dart';
import '../../../domain/i_socket_manager.dart';
import '../../../infastructure/chat/chat_message_dto.dart';
import '../../../infastructure/chat/chat_messages_service.dart';
import '../../../infastructure/chat/chat_room.dart';
import '../../../utility/log_init.dart';

part 'chat_rooms_bloc.freezed.dart';
part 'chat_rooms_event.dart';
part 'chat_rooms_state.dart';

@injectable
class ChatRoomsBloc extends Bloc<ChatRoomsEvent, ChatRoomsState> {
  final IChatMessagesService service;
  final ISocketManager socketManager;
  ChatRoomsBloc({
    required IChatMessagesService chatService,
    required this.socketManager,
  })  : service = chatService,
        super(ChatRoomsState.initial()) {
    logInit(ChatRoomsBloc);
    registerEventHandlers();
  }

  void registerEventHandlers() {
    on<FetchingStarted>(_onFetchingStarted);
    on<NewMessageReceived>(_onNewMessageReceived);
  }

  FutureOr<void> _onFetchingStarted(
    FetchingStarted event,
    Emitter<ChatRoomsState> emit,
  ) async {
    emit(state.copyWith(loading: true));
    final chatRooms = await service.fetchChatRooms();
    chatRooms.fold(
      (f) {
        print(f);
        // getIt<ISnackbarService>().error(f.message);
        emit(state.copyWith(loading: false));
      },
      (rooms) {
        socketManager.on(SocketEventKeys.last_message, _lastMessageListener);
        emit(
          state.copyWith(
            loading: false,
            chatRooms: rooms,
          ),
        );
      },
    );
  }

  dynamic _lastMessageListener(dynamic data) {
    print(data);
    add(ChatRoomsEvent.newMessageReceived(ChatMessageDTO.fromJson(data)));
  }

  FutureOr<void> _onNewMessageReceived(
    NewMessageReceived event,
    Emitter<ChatRoomsState> emit,
  ) {
    final receivedMessage = event.message;
    final rooms = state.chatRooms.map((chatRoom) {
      if (chatRoom.id == receivedMessage.roomId) {
        return chatRoom.copyWith(
          user: chatRoom.user.copyWith(
            unreadMessageCount: chatRoom.user.unreadMessageCount + 1,
          ),
          lastMessage: LastMessage(
            createdAt: receivedMessage.createdAt!,
            // createdAt: DateTime.now(),
            senderName: receivedMessage.user.name,
            text: receivedMessage.text,
          ),
        );
      }
      return chatRoom;
    }).toList();
    emit(state.copyWith(chatRooms: rooms));
  }
}
