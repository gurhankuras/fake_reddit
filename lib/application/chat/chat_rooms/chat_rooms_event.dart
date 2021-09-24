part of 'chat_rooms_bloc.dart';

@freezed
class ChatRoomsEvent with _$ChatRoomsEvent {
  const factory ChatRoomsEvent.fetchingStarted() = FetchingStarted;
  const factory ChatRoomsEvent.newMessageReceived(ChatMessageDTO message) =
      NewMessageReceived;

// const factory ChatRoomsEvent.() =_
}
