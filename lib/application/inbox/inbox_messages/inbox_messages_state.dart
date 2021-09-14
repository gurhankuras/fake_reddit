part of 'inbox_messages_bloc.dart';

@freezed
class InboxMessagesState with _$InboxMessagesState {
  const factory InboxMessagesState({
    required List<InboxMessage> messages,
    required bool loading,
    required bool failed,
  }) = _InboxMessagesState;

  factory InboxMessagesState.initial() => InboxMessagesState(
        messages: [],
        loading: false,
        failed: false,
      );
}
