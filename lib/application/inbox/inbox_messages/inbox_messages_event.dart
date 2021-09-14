part of 'inbox_messages_bloc.dart';

@freezed
class InboxMessagesEvent with _$InboxMessagesEvent {
  const factory InboxMessagesEvent.fetchingStarted() = _FetchingStarted;
  const factory InboxMessagesEvent.messageRead(String id) = _MessageRead;
// const factory InboxMessagesEvent.() =_
}
