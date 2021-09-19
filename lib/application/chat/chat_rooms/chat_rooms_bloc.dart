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
  }

  @override
  Stream<ChatRoomsState> mapEventToState(
    ChatRoomsEvent event,
  ) async* {
    yield* event.map(fetchingStarted: (e) async* {
      yield state.copyWith(loading: true);
      final chatRooms = await service.fetchChatRooms();

      yield* chatRooms.fold(
        (l) async* {
          print(l);
          // getIt<ISnackbarService>().error(l.message);
          yield state.copyWith(loading: false);
        },
        (rooms) async* {
          socketManager.on(SocketEventKeys.last_message, (data) {
            print(data);
            add(ChatRoomsEvent.newMessageReceived(
                ChatMessageDTO.fromJson(data)));
          });
          yield state.copyWith(loading: false, chatRooms: rooms);
        },
      );
    }, newMessageReceived: (e) async* {
      final receivedMessage = e.message;
      final rooms = state.chatRooms.map((e) {
        if (e.id == receivedMessage.roomId) {
          return e.copyWith(
              user: e.user.copyWith(
                unreadMessageCount: e.user.unreadMessageCount + 1,
              ),
              lastMessage: LastMessage(
                createdAt: receivedMessage.createdAt!,
                // createdAt: DateTime.now(),
                senderName: receivedMessage.user.name,
                text: receivedMessage.text,
              ));
        }
        return e;
      }).toList();

      yield state.copyWith(chatRooms: rooms);
    });
  }
}
