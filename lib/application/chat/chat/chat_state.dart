part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required List<ChatMessage> messages,
    required bool loading,
    required String message,
  }) = _ChatState;

  factory ChatState.initial() => ChatState(
        messages: [],
        loading: false,
        message: '',
      );
}
