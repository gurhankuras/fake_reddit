part of 'chat_rooms_bloc.dart';

@freezed
class ChatRoomsEvent with _$ChatRoomsEvent {
  const factory ChatRoomsEvent.fetchingStarted() = _FetchingStarted;
  const factory ChatRoomsEvent.newMessageReceived(ChatMessageDTO message) =
      _NewMessageReceived;

// const factory ChatRoomsEvent.() =_
}
