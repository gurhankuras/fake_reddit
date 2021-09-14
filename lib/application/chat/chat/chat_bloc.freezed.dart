// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatEventTearOff {
  const _$ChatEventTearOff();

  MessagesFetchingStarted messagesFetchingStarted() {
    return const MessagesFetchingStarted();
  }

  LoadedMoreMessage loadedMoreMessage() {
    return const LoadedMoreMessage();
  }

  MessageSent messageSent() {
    return const MessageSent();
  }

  MessageChanged messageChanged(String message) {
    return MessageChanged(
      message,
    );
  }

  TheOtherTyped theOtherTyped() {
    return const TheOtherTyped();
  }

  TheOtherSentMessage theOtherSentMessage(ChatMessageDTO message) {
    return TheOtherSentMessage(
      message,
    );
  }

  SignaledTyping signaledTyping() {
    return const SignaledTyping();
  }

  TypingSetFalse typingSetFalse() {
    return const TypingSetFalse();
  }
}

/// @nodoc
const $ChatEvent = _$ChatEventTearOff();

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() messagesFetchingStarted,
    required TResult Function() loadedMoreMessage,
    required TResult Function() messageSent,
    required TResult Function(String message) messageChanged,
    required TResult Function() theOtherTyped,
    required TResult Function(ChatMessageDTO message) theOtherSentMessage,
    required TResult Function() signaledTyping,
    required TResult Function() typingSetFalse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? messagesFetchingStarted,
    TResult Function()? loadedMoreMessage,
    TResult Function()? messageSent,
    TResult Function(String message)? messageChanged,
    TResult Function()? theOtherTyped,
    TResult Function(ChatMessageDTO message)? theOtherSentMessage,
    TResult Function()? signaledTyping,
    TResult Function()? typingSetFalse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagesFetchingStarted value)
        messagesFetchingStarted,
    required TResult Function(LoadedMoreMessage value) loadedMoreMessage,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(TheOtherTyped value) theOtherTyped,
    required TResult Function(TheOtherSentMessage value) theOtherSentMessage,
    required TResult Function(SignaledTyping value) signaledTyping,
    required TResult Function(TypingSetFalse value) typingSetFalse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagesFetchingStarted value)? messagesFetchingStarted,
    TResult Function(LoadedMoreMessage value)? loadedMoreMessage,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(TheOtherTyped value)? theOtherTyped,
    TResult Function(TheOtherSentMessage value)? theOtherSentMessage,
    TResult Function(SignaledTyping value)? signaledTyping,
    TResult Function(TypingSetFalse value)? typingSetFalse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res> implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  final ChatEvent _value;
  // ignore: unused_field
  final $Res Function(ChatEvent) _then;
}

/// @nodoc
abstract class $MessagesFetchingStartedCopyWith<$Res> {
  factory $MessagesFetchingStartedCopyWith(MessagesFetchingStarted value,
          $Res Function(MessagesFetchingStarted) then) =
      _$MessagesFetchingStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessagesFetchingStartedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $MessagesFetchingStartedCopyWith<$Res> {
  _$MessagesFetchingStartedCopyWithImpl(MessagesFetchingStarted _value,
      $Res Function(MessagesFetchingStarted) _then)
      : super(_value, (v) => _then(v as MessagesFetchingStarted));

  @override
  MessagesFetchingStarted get _value => super._value as MessagesFetchingStarted;
}

/// @nodoc

class _$MessagesFetchingStarted implements MessagesFetchingStarted {
  const _$MessagesFetchingStarted();

  @override
  String toString() {
    return 'ChatEvent.messagesFetchingStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MessagesFetchingStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() messagesFetchingStarted,
    required TResult Function() loadedMoreMessage,
    required TResult Function() messageSent,
    required TResult Function(String message) messageChanged,
    required TResult Function() theOtherTyped,
    required TResult Function(ChatMessageDTO message) theOtherSentMessage,
    required TResult Function() signaledTyping,
    required TResult Function() typingSetFalse,
  }) {
    return messagesFetchingStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? messagesFetchingStarted,
    TResult Function()? loadedMoreMessage,
    TResult Function()? messageSent,
    TResult Function(String message)? messageChanged,
    TResult Function()? theOtherTyped,
    TResult Function(ChatMessageDTO message)? theOtherSentMessage,
    TResult Function()? signaledTyping,
    TResult Function()? typingSetFalse,
    required TResult orElse(),
  }) {
    if (messagesFetchingStarted != null) {
      return messagesFetchingStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagesFetchingStarted value)
        messagesFetchingStarted,
    required TResult Function(LoadedMoreMessage value) loadedMoreMessage,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(TheOtherTyped value) theOtherTyped,
    required TResult Function(TheOtherSentMessage value) theOtherSentMessage,
    required TResult Function(SignaledTyping value) signaledTyping,
    required TResult Function(TypingSetFalse value) typingSetFalse,
  }) {
    return messagesFetchingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagesFetchingStarted value)? messagesFetchingStarted,
    TResult Function(LoadedMoreMessage value)? loadedMoreMessage,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(TheOtherTyped value)? theOtherTyped,
    TResult Function(TheOtherSentMessage value)? theOtherSentMessage,
    TResult Function(SignaledTyping value)? signaledTyping,
    TResult Function(TypingSetFalse value)? typingSetFalse,
    required TResult orElse(),
  }) {
    if (messagesFetchingStarted != null) {
      return messagesFetchingStarted(this);
    }
    return orElse();
  }
}

abstract class MessagesFetchingStarted implements ChatEvent {
  const factory MessagesFetchingStarted() = _$MessagesFetchingStarted;
}

/// @nodoc
abstract class $LoadedMoreMessageCopyWith<$Res> {
  factory $LoadedMoreMessageCopyWith(
          LoadedMoreMessage value, $Res Function(LoadedMoreMessage) then) =
      _$LoadedMoreMessageCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadedMoreMessageCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $LoadedMoreMessageCopyWith<$Res> {
  _$LoadedMoreMessageCopyWithImpl(
      LoadedMoreMessage _value, $Res Function(LoadedMoreMessage) _then)
      : super(_value, (v) => _then(v as LoadedMoreMessage));

  @override
  LoadedMoreMessage get _value => super._value as LoadedMoreMessage;
}

/// @nodoc

class _$LoadedMoreMessage implements LoadedMoreMessage {
  const _$LoadedMoreMessage();

  @override
  String toString() {
    return 'ChatEvent.loadedMoreMessage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadedMoreMessage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() messagesFetchingStarted,
    required TResult Function() loadedMoreMessage,
    required TResult Function() messageSent,
    required TResult Function(String message) messageChanged,
    required TResult Function() theOtherTyped,
    required TResult Function(ChatMessageDTO message) theOtherSentMessage,
    required TResult Function() signaledTyping,
    required TResult Function() typingSetFalse,
  }) {
    return loadedMoreMessage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? messagesFetchingStarted,
    TResult Function()? loadedMoreMessage,
    TResult Function()? messageSent,
    TResult Function(String message)? messageChanged,
    TResult Function()? theOtherTyped,
    TResult Function(ChatMessageDTO message)? theOtherSentMessage,
    TResult Function()? signaledTyping,
    TResult Function()? typingSetFalse,
    required TResult orElse(),
  }) {
    if (loadedMoreMessage != null) {
      return loadedMoreMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagesFetchingStarted value)
        messagesFetchingStarted,
    required TResult Function(LoadedMoreMessage value) loadedMoreMessage,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(TheOtherTyped value) theOtherTyped,
    required TResult Function(TheOtherSentMessage value) theOtherSentMessage,
    required TResult Function(SignaledTyping value) signaledTyping,
    required TResult Function(TypingSetFalse value) typingSetFalse,
  }) {
    return loadedMoreMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagesFetchingStarted value)? messagesFetchingStarted,
    TResult Function(LoadedMoreMessage value)? loadedMoreMessage,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(TheOtherTyped value)? theOtherTyped,
    TResult Function(TheOtherSentMessage value)? theOtherSentMessage,
    TResult Function(SignaledTyping value)? signaledTyping,
    TResult Function(TypingSetFalse value)? typingSetFalse,
    required TResult orElse(),
  }) {
    if (loadedMoreMessage != null) {
      return loadedMoreMessage(this);
    }
    return orElse();
  }
}

abstract class LoadedMoreMessage implements ChatEvent {
  const factory LoadedMoreMessage() = _$LoadedMoreMessage;
}

/// @nodoc
abstract class $MessageSentCopyWith<$Res> {
  factory $MessageSentCopyWith(
          MessageSent value, $Res Function(MessageSent) then) =
      _$MessageSentCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageSentCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $MessageSentCopyWith<$Res> {
  _$MessageSentCopyWithImpl(
      MessageSent _value, $Res Function(MessageSent) _then)
      : super(_value, (v) => _then(v as MessageSent));

  @override
  MessageSent get _value => super._value as MessageSent;
}

/// @nodoc

class _$MessageSent implements MessageSent {
  const _$MessageSent();

  @override
  String toString() {
    return 'ChatEvent.messageSent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MessageSent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() messagesFetchingStarted,
    required TResult Function() loadedMoreMessage,
    required TResult Function() messageSent,
    required TResult Function(String message) messageChanged,
    required TResult Function() theOtherTyped,
    required TResult Function(ChatMessageDTO message) theOtherSentMessage,
    required TResult Function() signaledTyping,
    required TResult Function() typingSetFalse,
  }) {
    return messageSent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? messagesFetchingStarted,
    TResult Function()? loadedMoreMessage,
    TResult Function()? messageSent,
    TResult Function(String message)? messageChanged,
    TResult Function()? theOtherTyped,
    TResult Function(ChatMessageDTO message)? theOtherSentMessage,
    TResult Function()? signaledTyping,
    TResult Function()? typingSetFalse,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagesFetchingStarted value)
        messagesFetchingStarted,
    required TResult Function(LoadedMoreMessage value) loadedMoreMessage,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(TheOtherTyped value) theOtherTyped,
    required TResult Function(TheOtherSentMessage value) theOtherSentMessage,
    required TResult Function(SignaledTyping value) signaledTyping,
    required TResult Function(TypingSetFalse value) typingSetFalse,
  }) {
    return messageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagesFetchingStarted value)? messagesFetchingStarted,
    TResult Function(LoadedMoreMessage value)? loadedMoreMessage,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(TheOtherTyped value)? theOtherTyped,
    TResult Function(TheOtherSentMessage value)? theOtherSentMessage,
    TResult Function(SignaledTyping value)? signaledTyping,
    TResult Function(TypingSetFalse value)? typingSetFalse,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(this);
    }
    return orElse();
  }
}

abstract class MessageSent implements ChatEvent {
  const factory MessageSent() = _$MessageSent;
}

/// @nodoc
abstract class $MessageChangedCopyWith<$Res> {
  factory $MessageChangedCopyWith(
          MessageChanged value, $Res Function(MessageChanged) then) =
      _$MessageChangedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$MessageChangedCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $MessageChangedCopyWith<$Res> {
  _$MessageChangedCopyWithImpl(
      MessageChanged _value, $Res Function(MessageChanged) _then)
      : super(_value, (v) => _then(v as MessageChanged));

  @override
  MessageChanged get _value => super._value as MessageChanged;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(MessageChanged(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageChanged implements MessageChanged {
  const _$MessageChanged(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatEvent.messageChanged(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MessageChanged &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $MessageChangedCopyWith<MessageChanged> get copyWith =>
      _$MessageChangedCopyWithImpl<MessageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() messagesFetchingStarted,
    required TResult Function() loadedMoreMessage,
    required TResult Function() messageSent,
    required TResult Function(String message) messageChanged,
    required TResult Function() theOtherTyped,
    required TResult Function(ChatMessageDTO message) theOtherSentMessage,
    required TResult Function() signaledTyping,
    required TResult Function() typingSetFalse,
  }) {
    return messageChanged(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? messagesFetchingStarted,
    TResult Function()? loadedMoreMessage,
    TResult Function()? messageSent,
    TResult Function(String message)? messageChanged,
    TResult Function()? theOtherTyped,
    TResult Function(ChatMessageDTO message)? theOtherSentMessage,
    TResult Function()? signaledTyping,
    TResult Function()? typingSetFalse,
    required TResult orElse(),
  }) {
    if (messageChanged != null) {
      return messageChanged(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagesFetchingStarted value)
        messagesFetchingStarted,
    required TResult Function(LoadedMoreMessage value) loadedMoreMessage,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(TheOtherTyped value) theOtherTyped,
    required TResult Function(TheOtherSentMessage value) theOtherSentMessage,
    required TResult Function(SignaledTyping value) signaledTyping,
    required TResult Function(TypingSetFalse value) typingSetFalse,
  }) {
    return messageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagesFetchingStarted value)? messagesFetchingStarted,
    TResult Function(LoadedMoreMessage value)? loadedMoreMessage,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(TheOtherTyped value)? theOtherTyped,
    TResult Function(TheOtherSentMessage value)? theOtherSentMessage,
    TResult Function(SignaledTyping value)? signaledTyping,
    TResult Function(TypingSetFalse value)? typingSetFalse,
    required TResult orElse(),
  }) {
    if (messageChanged != null) {
      return messageChanged(this);
    }
    return orElse();
  }
}

abstract class MessageChanged implements ChatEvent {
  const factory MessageChanged(String message) = _$MessageChanged;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageChangedCopyWith<MessageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TheOtherTypedCopyWith<$Res> {
  factory $TheOtherTypedCopyWith(
          TheOtherTyped value, $Res Function(TheOtherTyped) then) =
      _$TheOtherTypedCopyWithImpl<$Res>;
}

/// @nodoc
class _$TheOtherTypedCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $TheOtherTypedCopyWith<$Res> {
  _$TheOtherTypedCopyWithImpl(
      TheOtherTyped _value, $Res Function(TheOtherTyped) _then)
      : super(_value, (v) => _then(v as TheOtherTyped));

  @override
  TheOtherTyped get _value => super._value as TheOtherTyped;
}

/// @nodoc

class _$TheOtherTyped implements TheOtherTyped {
  const _$TheOtherTyped();

  @override
  String toString() {
    return 'ChatEvent.theOtherTyped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TheOtherTyped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() messagesFetchingStarted,
    required TResult Function() loadedMoreMessage,
    required TResult Function() messageSent,
    required TResult Function(String message) messageChanged,
    required TResult Function() theOtherTyped,
    required TResult Function(ChatMessageDTO message) theOtherSentMessage,
    required TResult Function() signaledTyping,
    required TResult Function() typingSetFalse,
  }) {
    return theOtherTyped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? messagesFetchingStarted,
    TResult Function()? loadedMoreMessage,
    TResult Function()? messageSent,
    TResult Function(String message)? messageChanged,
    TResult Function()? theOtherTyped,
    TResult Function(ChatMessageDTO message)? theOtherSentMessage,
    TResult Function()? signaledTyping,
    TResult Function()? typingSetFalse,
    required TResult orElse(),
  }) {
    if (theOtherTyped != null) {
      return theOtherTyped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagesFetchingStarted value)
        messagesFetchingStarted,
    required TResult Function(LoadedMoreMessage value) loadedMoreMessage,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(TheOtherTyped value) theOtherTyped,
    required TResult Function(TheOtherSentMessage value) theOtherSentMessage,
    required TResult Function(SignaledTyping value) signaledTyping,
    required TResult Function(TypingSetFalse value) typingSetFalse,
  }) {
    return theOtherTyped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagesFetchingStarted value)? messagesFetchingStarted,
    TResult Function(LoadedMoreMessage value)? loadedMoreMessage,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(TheOtherTyped value)? theOtherTyped,
    TResult Function(TheOtherSentMessage value)? theOtherSentMessage,
    TResult Function(SignaledTyping value)? signaledTyping,
    TResult Function(TypingSetFalse value)? typingSetFalse,
    required TResult orElse(),
  }) {
    if (theOtherTyped != null) {
      return theOtherTyped(this);
    }
    return orElse();
  }
}

abstract class TheOtherTyped implements ChatEvent {
  const factory TheOtherTyped() = _$TheOtherTyped;
}

/// @nodoc
abstract class $TheOtherSentMessageCopyWith<$Res> {
  factory $TheOtherSentMessageCopyWith(
          TheOtherSentMessage value, $Res Function(TheOtherSentMessage) then) =
      _$TheOtherSentMessageCopyWithImpl<$Res>;
  $Res call({ChatMessageDTO message});
}

/// @nodoc
class _$TheOtherSentMessageCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $TheOtherSentMessageCopyWith<$Res> {
  _$TheOtherSentMessageCopyWithImpl(
      TheOtherSentMessage _value, $Res Function(TheOtherSentMessage) _then)
      : super(_value, (v) => _then(v as TheOtherSentMessage));

  @override
  TheOtherSentMessage get _value => super._value as TheOtherSentMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(TheOtherSentMessage(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessageDTO,
    ));
  }
}

/// @nodoc

class _$TheOtherSentMessage implements TheOtherSentMessage {
  const _$TheOtherSentMessage(this.message);

  @override
  final ChatMessageDTO message;

  @override
  String toString() {
    return 'ChatEvent.theOtherSentMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TheOtherSentMessage &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $TheOtherSentMessageCopyWith<TheOtherSentMessage> get copyWith =>
      _$TheOtherSentMessageCopyWithImpl<TheOtherSentMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() messagesFetchingStarted,
    required TResult Function() loadedMoreMessage,
    required TResult Function() messageSent,
    required TResult Function(String message) messageChanged,
    required TResult Function() theOtherTyped,
    required TResult Function(ChatMessageDTO message) theOtherSentMessage,
    required TResult Function() signaledTyping,
    required TResult Function() typingSetFalse,
  }) {
    return theOtherSentMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? messagesFetchingStarted,
    TResult Function()? loadedMoreMessage,
    TResult Function()? messageSent,
    TResult Function(String message)? messageChanged,
    TResult Function()? theOtherTyped,
    TResult Function(ChatMessageDTO message)? theOtherSentMessage,
    TResult Function()? signaledTyping,
    TResult Function()? typingSetFalse,
    required TResult orElse(),
  }) {
    if (theOtherSentMessage != null) {
      return theOtherSentMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagesFetchingStarted value)
        messagesFetchingStarted,
    required TResult Function(LoadedMoreMessage value) loadedMoreMessage,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(TheOtherTyped value) theOtherTyped,
    required TResult Function(TheOtherSentMessage value) theOtherSentMessage,
    required TResult Function(SignaledTyping value) signaledTyping,
    required TResult Function(TypingSetFalse value) typingSetFalse,
  }) {
    return theOtherSentMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagesFetchingStarted value)? messagesFetchingStarted,
    TResult Function(LoadedMoreMessage value)? loadedMoreMessage,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(TheOtherTyped value)? theOtherTyped,
    TResult Function(TheOtherSentMessage value)? theOtherSentMessage,
    TResult Function(SignaledTyping value)? signaledTyping,
    TResult Function(TypingSetFalse value)? typingSetFalse,
    required TResult orElse(),
  }) {
    if (theOtherSentMessage != null) {
      return theOtherSentMessage(this);
    }
    return orElse();
  }
}

abstract class TheOtherSentMessage implements ChatEvent {
  const factory TheOtherSentMessage(ChatMessageDTO message) =
      _$TheOtherSentMessage;

  ChatMessageDTO get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TheOtherSentMessageCopyWith<TheOtherSentMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignaledTypingCopyWith<$Res> {
  factory $SignaledTypingCopyWith(
          SignaledTyping value, $Res Function(SignaledTyping) then) =
      _$SignaledTypingCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignaledTypingCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $SignaledTypingCopyWith<$Res> {
  _$SignaledTypingCopyWithImpl(
      SignaledTyping _value, $Res Function(SignaledTyping) _then)
      : super(_value, (v) => _then(v as SignaledTyping));

  @override
  SignaledTyping get _value => super._value as SignaledTyping;
}

/// @nodoc

class _$SignaledTyping implements SignaledTyping {
  const _$SignaledTyping();

  @override
  String toString() {
    return 'ChatEvent.signaledTyping()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignaledTyping);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() messagesFetchingStarted,
    required TResult Function() loadedMoreMessage,
    required TResult Function() messageSent,
    required TResult Function(String message) messageChanged,
    required TResult Function() theOtherTyped,
    required TResult Function(ChatMessageDTO message) theOtherSentMessage,
    required TResult Function() signaledTyping,
    required TResult Function() typingSetFalse,
  }) {
    return signaledTyping();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? messagesFetchingStarted,
    TResult Function()? loadedMoreMessage,
    TResult Function()? messageSent,
    TResult Function(String message)? messageChanged,
    TResult Function()? theOtherTyped,
    TResult Function(ChatMessageDTO message)? theOtherSentMessage,
    TResult Function()? signaledTyping,
    TResult Function()? typingSetFalse,
    required TResult orElse(),
  }) {
    if (signaledTyping != null) {
      return signaledTyping();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagesFetchingStarted value)
        messagesFetchingStarted,
    required TResult Function(LoadedMoreMessage value) loadedMoreMessage,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(TheOtherTyped value) theOtherTyped,
    required TResult Function(TheOtherSentMessage value) theOtherSentMessage,
    required TResult Function(SignaledTyping value) signaledTyping,
    required TResult Function(TypingSetFalse value) typingSetFalse,
  }) {
    return signaledTyping(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagesFetchingStarted value)? messagesFetchingStarted,
    TResult Function(LoadedMoreMessage value)? loadedMoreMessage,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(TheOtherTyped value)? theOtherTyped,
    TResult Function(TheOtherSentMessage value)? theOtherSentMessage,
    TResult Function(SignaledTyping value)? signaledTyping,
    TResult Function(TypingSetFalse value)? typingSetFalse,
    required TResult orElse(),
  }) {
    if (signaledTyping != null) {
      return signaledTyping(this);
    }
    return orElse();
  }
}

abstract class SignaledTyping implements ChatEvent {
  const factory SignaledTyping() = _$SignaledTyping;
}

/// @nodoc
abstract class $TypingSetFalseCopyWith<$Res> {
  factory $TypingSetFalseCopyWith(
          TypingSetFalse value, $Res Function(TypingSetFalse) then) =
      _$TypingSetFalseCopyWithImpl<$Res>;
}

/// @nodoc
class _$TypingSetFalseCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $TypingSetFalseCopyWith<$Res> {
  _$TypingSetFalseCopyWithImpl(
      TypingSetFalse _value, $Res Function(TypingSetFalse) _then)
      : super(_value, (v) => _then(v as TypingSetFalse));

  @override
  TypingSetFalse get _value => super._value as TypingSetFalse;
}

/// @nodoc

class _$TypingSetFalse implements TypingSetFalse {
  const _$TypingSetFalse();

  @override
  String toString() {
    return 'ChatEvent.typingSetFalse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TypingSetFalse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() messagesFetchingStarted,
    required TResult Function() loadedMoreMessage,
    required TResult Function() messageSent,
    required TResult Function(String message) messageChanged,
    required TResult Function() theOtherTyped,
    required TResult Function(ChatMessageDTO message) theOtherSentMessage,
    required TResult Function() signaledTyping,
    required TResult Function() typingSetFalse,
  }) {
    return typingSetFalse();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? messagesFetchingStarted,
    TResult Function()? loadedMoreMessage,
    TResult Function()? messageSent,
    TResult Function(String message)? messageChanged,
    TResult Function()? theOtherTyped,
    TResult Function(ChatMessageDTO message)? theOtherSentMessage,
    TResult Function()? signaledTyping,
    TResult Function()? typingSetFalse,
    required TResult orElse(),
  }) {
    if (typingSetFalse != null) {
      return typingSetFalse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagesFetchingStarted value)
        messagesFetchingStarted,
    required TResult Function(LoadedMoreMessage value) loadedMoreMessage,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(TheOtherTyped value) theOtherTyped,
    required TResult Function(TheOtherSentMessage value) theOtherSentMessage,
    required TResult Function(SignaledTyping value) signaledTyping,
    required TResult Function(TypingSetFalse value) typingSetFalse,
  }) {
    return typingSetFalse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagesFetchingStarted value)? messagesFetchingStarted,
    TResult Function(LoadedMoreMessage value)? loadedMoreMessage,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(TheOtherTyped value)? theOtherTyped,
    TResult Function(TheOtherSentMessage value)? theOtherSentMessage,
    TResult Function(SignaledTyping value)? signaledTyping,
    TResult Function(TypingSetFalse value)? typingSetFalse,
    required TResult orElse(),
  }) {
    if (typingSetFalse != null) {
      return typingSetFalse(this);
    }
    return orElse();
  }
}

abstract class TypingSetFalse implements ChatEvent {
  const factory TypingSetFalse() = _$TypingSetFalse;
}

/// @nodoc
class _$ChatStateTearOff {
  const _$ChatStateTearOff();

  _ChatState call(
      {required List<ChatMessageDTO> messages,
      required bool loading,
      required String message,
      required bool otherTyping,
      required bool user,
      required int page,
      required Option<String> fetchedAt}) {
    return _ChatState(
      messages: messages,
      loading: loading,
      message: message,
      otherTyping: otherTyping,
      user: user,
      page: page,
      fetchedAt: fetchedAt,
    );
  }
}

/// @nodoc
const $ChatState = _$ChatStateTearOff();

/// @nodoc
mixin _$ChatState {
  List<ChatMessageDTO> get messages => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get otherTyping => throw _privateConstructorUsedError;
  bool get user => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  Option<String> get fetchedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
  $Res call(
      {List<ChatMessageDTO> messages,
      bool loading,
      String message,
      bool otherTyping,
      bool user,
      int page,
      Option<String> fetchedAt});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;

  @override
  $Res call({
    Object? messages = freezed,
    Object? loading = freezed,
    Object? message = freezed,
    Object? otherTyping = freezed,
    Object? user = freezed,
    Object? page = freezed,
    Object? fetchedAt = freezed,
  }) {
    return _then(_value.copyWith(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageDTO>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      otherTyping: otherTyping == freezed
          ? _value.otherTyping
          : otherTyping // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as bool,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      fetchedAt: fetchedAt == freezed
          ? _value.fetchedAt
          : fetchedAt // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc
abstract class _$ChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$ChatStateCopyWith(
          _ChatState value, $Res Function(_ChatState) then) =
      __$ChatStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ChatMessageDTO> messages,
      bool loading,
      String message,
      bool otherTyping,
      bool user,
      int page,
      Option<String> fetchedAt});
}

/// @nodoc
class __$ChatStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements _$ChatStateCopyWith<$Res> {
  __$ChatStateCopyWithImpl(_ChatState _value, $Res Function(_ChatState) _then)
      : super(_value, (v) => _then(v as _ChatState));

  @override
  _ChatState get _value => super._value as _ChatState;

  @override
  $Res call({
    Object? messages = freezed,
    Object? loading = freezed,
    Object? message = freezed,
    Object? otherTyping = freezed,
    Object? user = freezed,
    Object? page = freezed,
    Object? fetchedAt = freezed,
  }) {
    return _then(_ChatState(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageDTO>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      otherTyping: otherTyping == freezed
          ? _value.otherTyping
          : otherTyping // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as bool,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      fetchedAt: fetchedAt == freezed
          ? _value.fetchedAt
          : fetchedAt // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_ChatState implements _ChatState {
  const _$_ChatState(
      {required this.messages,
      required this.loading,
      required this.message,
      required this.otherTyping,
      required this.user,
      required this.page,
      required this.fetchedAt});

  @override
  final List<ChatMessageDTO> messages;
  @override
  final bool loading;
  @override
  final String message;
  @override
  final bool otherTyping;
  @override
  final bool user;
  @override
  final int page;
  @override
  final Option<String> fetchedAt;

  @override
  String toString() {
    return 'ChatState(messages: $messages, loading: $loading, message: $message, otherTyping: $otherTyping, user: $user, page: $page, fetchedAt: $fetchedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatState &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.otherTyping, otherTyping) ||
                const DeepCollectionEquality()
                    .equals(other.otherTyping, otherTyping)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.fetchedAt, fetchedAt) ||
                const DeepCollectionEquality()
                    .equals(other.fetchedAt, fetchedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(otherTyping) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(fetchedAt);

  @JsonKey(ignore: true)
  @override
  _$ChatStateCopyWith<_ChatState> get copyWith =>
      __$ChatStateCopyWithImpl<_ChatState>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {required List<ChatMessageDTO> messages,
      required bool loading,
      required String message,
      required bool otherTyping,
      required bool user,
      required int page,
      required Option<String> fetchedAt}) = _$_ChatState;

  @override
  List<ChatMessageDTO> get messages => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  bool get otherTyping => throw _privateConstructorUsedError;
  @override
  bool get user => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  Option<String> get fetchedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatStateCopyWith<_ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
