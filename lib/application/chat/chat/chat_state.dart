part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  // TODO: add hasReachedMax field
  const factory ChatState({
    required List<ChatMessageDTO> messages,
    required bool loading,
    required String message,
    required bool otherTyping,
    required bool user,
    required int page,
    required Option<String> fetchedAt,
  }) = _ChatState;

  factory ChatState.initial() => ChatState(
        messages: [],
        loading: false,
        message: '',
        otherTyping: false,
        user: false,
        page: 1,
        fetchedAt: none(),
      );
}
