part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.emit() = _Emit;
  const factory ChatEvent.messagedLoaded() = _MessagesLoaded;
  const factory ChatEvent.messageSent() = _MessageSent;
  const factory ChatEvent.messageChanged(String message) = _MessageChanged;
}
