part of 'chat_rooms_bloc.dart';

@freezed
class ChatRoomsState with _$ChatRoomsState {
  factory ChatRoomsState({
    required List<ChatRoom> chatRooms,
    required bool loading,
  }) = _ChatRoomsState;

  factory ChatRoomsState.initial() => ChatRoomsState(
        chatRooms: [],
        loading: false,
      );
}
