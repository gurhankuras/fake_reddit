part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.emit() = _Emit;
  const factory ChatEvent.messagesFetchingStarted() = _MessagesFetchingStarted;
  const factory ChatEvent.loadedMoreMessage() = _LoadedMoreMessage;
  const factory ChatEvent.toggleLoadMore(bool value) = _ToggleLoadMore;

  // const factory ChatEvent.messagedLoaded(List<ChatMessage> messages) =
  //     _MessagesLoaded;
  const factory ChatEvent.messageSent() = _MessageSent;
  const factory ChatEvent.messageChanged(String message) = _MessageChanged;
  const factory ChatEvent.theOtherTyped() = _TheOtherTyped;
  const factory ChatEvent.theOtherSentMessage(ChatMessageDTO message) =
      _TheOtherSentMessage;

  const factory ChatEvent.typingSetFalse() = _TypingSetFalse;
}
