part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.messagesFetchingStarted() = MessagesFetchingStarted;
  const factory ChatEvent.loadedMoreMessage() = LoadedMoreMessage;

  const factory ChatEvent.messageSent() = MessageSent;
  const factory ChatEvent.messageChanged(String message) = MessageChanged;
  const factory ChatEvent.theOtherTyped() = TheOtherTyped;
  const factory ChatEvent.theOtherSentMessage(ChatMessageDTO message) =
      TheOtherSentMessage;
  const factory ChatEvent.signaledTyping() = SignaledTyping;

  const factory ChatEvent.typingSetFalse() = TypingSetFalse;
}
