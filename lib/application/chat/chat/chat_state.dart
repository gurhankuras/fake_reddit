part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState(
      {required List<ChatMessageDTO> messages,
      required bool loading,
      required String message,
      required bool otherTyping,
      required bool user,
      required int page,
      required bool loadMore}) = _ChatState;

  factory ChatState.initial() => ChatState(
        messages: [],
        loading: false,
        message: '',
        otherTyping: false,
        user: false,
        page: 1,
        loadMore: false,
      );
}
