part of 'inbox_messages_bloc.dart';

@freezed
class InboxMessagesEvent with _$InboxMessagesEvent {
  const factory InboxMessagesEvent.fetchingStarted() = FetchingStarted;
  const factory InboxMessagesEvent.messageRead(String id) = MessageRead;
// const factory InboxMessagesEvent.() =_
}
