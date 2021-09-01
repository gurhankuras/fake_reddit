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

  _Emit emit() {
    return const _Emit();
  }

  _MessagesLoaded messagedLoaded(List<ChatMessage> messages) {
    return _MessagesLoaded(
      messages,
    );
  }

  _MessageSent messageSent() {
    return const _MessageSent();
  }

  _MessageChanged messageChanged(String message) {
    return _MessageChanged(
      message,
    );
  }

  _TheOtherTyped theOtherTyped() {
    return const _TheOtherTyped();
  }

  _TypingSetFalse typingSetFalse() {
    return const _TypingSetFalse();
  }
}

/// @nodoc
const $ChatEvent = _$ChatEventTearOff();

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emit,
    required TResult Function(List<ChatMessage> messages) messagedLoaded,
    required TResult Function() messageSent,
    required TResult Function(String message) messageChanged,
    required TResult Function() theOtherTyped,
    required TResult Function() typingSetFalse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emit,
    TResult Function(List<ChatMessage> messages)? messagedLoaded,
    TResult Function()? messageSent,
    TResult Function(String message)? messageChanged,
    TResult Function()? theOtherTyped,
    TResult Function()? typingSetFalse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Emit value) emit,
    required TResult Function(_MessagesLoaded value) messagedLoaded,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_TheOtherTyped value) theOtherTyped,
    required TResult Function(_TypingSetFalse value) typingSetFalse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Emit value)? emit,
    TResult Function(_MessagesLoaded value)? messagedLoaded,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_TheOtherTyped value)? theOtherTyped,
    TResult Function(_TypingSetFalse value)? typingSetFalse,
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
abstract class _$EmitCopyWith<$Res> {
  factory _$EmitCopyWith(_Emit value, $Res Function(_Emit) then) =
      __$EmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmitCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$EmitCopyWith<$Res> {
  __$EmitCopyWithImpl(_Emit _value, $Res Function(_Emit) _then)
      : super(_value, (v) => _then(v as _Emit));

  @override
  _Emit get _value => super._value as _Emit;
}

/// @nodoc

class _$_Emit implements _Emit {
  const _$_Emit();

  @override
  String toString() {
    return 'ChatEvent.emit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Emit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emit,
    required TResult Function(List<ChatMessage> messages) messagedLoaded,
    required TResult Function() messageSent,
    required TResult Function(String message) messageChanged,
    required TResult Function() theOtherTyped,
    required TResult Function() typingSetFalse,
  }) {
    return emit();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emit,
    TResult Function(List<ChatMessage> messages)? messagedLoaded,
    TResult Function()? messageSent,
    TResult Function(String message)? messageChanged,
    TResult Function()? theOtherTyped,
    TResult Function()? typingSetFalse,
    required TResult orElse(),
  }) {
    if (emit != null) {
      return emit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Emit value) emit,
    required TResult Function(_MessagesLoaded value) messagedLoaded,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_TheOtherTyped value) theOtherTyped,
    required TResult Function(_TypingSetFalse value) typingSetFalse,
  }) {
    return emit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Emit value)? emit,
    TResult Function(_MessagesLoaded value)? messagedLoaded,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_TheOtherTyped value)? theOtherTyped,
    TResult Function(_TypingSetFalse value)? typingSetFalse,
    required TResult orElse(),
  }) {
    if (emit != null) {
      return emit(this);
    }
    return orElse();
  }
}

abstract class _Emit implements ChatEvent {
  const factory _Emit() = _$_Emit;
}

/// @nodoc
abstract class _$MessagesLoadedCopyWith<$Res> {
  factory _$MessagesLoadedCopyWith(
          _MessagesLoaded value, $Res Function(_MessagesLoaded) then) =
      __$MessagesLoadedCopyWithImpl<$Res>;
  $Res call({List<ChatMessage> messages});
}

/// @nodoc
class __$MessagesLoadedCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$MessagesLoadedCopyWith<$Res> {
  __$MessagesLoadedCopyWithImpl(
      _MessagesLoaded _value, $Res Function(_MessagesLoaded) _then)
      : super(_value, (v) => _then(v as _MessagesLoaded));

  @override
  _MessagesLoaded get _value => super._value as _MessagesLoaded;

  @override
  $Res call({
    Object? messages = freezed,
  }) {
    return _then(_MessagesLoaded(
      messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
    ));
  }
}

/// @nodoc

class _$_MessagesLoaded implements _MessagesLoaded {
  const _$_MessagesLoaded(this.messages);

  @override
  final List<ChatMessage> messages;

  @override
  String toString() {
    return 'ChatEvent.messagedLoaded(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessagesLoaded &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(messages);

  @JsonKey(ignore: true)
  @override
  _$MessagesLoadedCopyWith<_MessagesLoaded> get copyWith =>
      __$MessagesLoadedCopyWithImpl<_MessagesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emit,
    required TResult Function(List<ChatMessage> messages) messagedLoaded,
    required TResult Function() messageSent,
    required TResult Function(String message) messageChanged,
    required TResult Function() theOtherTyped,
    required TResult Function() typingSetFalse,
  }) {
    return messagedLoaded(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emit,
    TResult Function(List<ChatMessage> messages)? messagedLoaded,
    TResult Function()? messageSent,
    TResult Function(String message)? messageChanged,
    TResult Function()? theOtherTyped,
    TResult Function()? typingSetFalse,
    required TResult orElse(),
  }) {
    if (messagedLoaded != null) {
      return messagedLoaded(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Emit value) emit,
    required TResult Function(_MessagesLoaded value) messagedLoaded,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_TheOtherTyped value) theOtherTyped,
    required TResult Function(_TypingSetFalse value) typingSetFalse,
  }) {
    return messagedLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Emit value)? emit,
    TResult Function(_MessagesLoaded value)? messagedLoaded,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_TheOtherTyped value)? theOtherTyped,
    TResult Function(_TypingSetFalse value)? typingSetFalse,
    required TResult orElse(),
  }) {
    if (messagedLoaded != null) {
      return messagedLoaded(this);
    }
    return orElse();
  }
}

abstract class _MessagesLoaded implements ChatEvent {
  const factory _MessagesLoaded(List<ChatMessage> messages) = _$_MessagesLoaded;

  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MessagesLoadedCopyWith<_MessagesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MessageSentCopyWith<$Res> {
  factory _$MessageSentCopyWith(
          _MessageSent value, $Res Function(_MessageSent) then) =
      __$MessageSentCopyWithImpl<$Res>;
}

/// @nodoc
class __$MessageSentCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$MessageSentCopyWith<$Res> {
  __$MessageSentCopyWithImpl(
      _MessageSent _value, $Res Function(_MessageSent) _then)
      : super(_value, (v) => _then(v as _MessageSent));

  @override
  _MessageSent get _value => super._value as _MessageSent;
}

/// @nodoc

class _$_MessageSent implements _MessageSent {
  const _$_MessageSent();

  @override
  String toString() {
    return 'ChatEvent.messageSent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MessageSent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emit,
    required TResult Function(List<ChatMessage> messages) messagedLoaded,
    required TResult Function() messageSent,
    required TResult Function(String message) messageChanged,
    required TResult Function() theOtherTyped,
    required TResult Function() typingSetFalse,
  }) {
    return messageSent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emit,
    TResult Function(List<ChatMessage> messages)? messagedLoaded,
    TResult Function()? messageSent,
    TResult Function(String message)? messageChanged,
    TResult Function()? theOtherTyped,
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
    required TResult Function(_Emit value) emit,
    required TResult Function(_MessagesLoaded value) messagedLoaded,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_TheOtherTyped value) theOtherTyped,
    required TResult Function(_TypingSetFalse value) typingSetFalse,
  }) {
    return messageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Emit value)? emit,
    TResult Function(_MessagesLoaded value)? messagedLoaded,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_TheOtherTyped value)? theOtherTyped,
    TResult Function(_TypingSetFalse value)? typingSetFalse,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(this);
    }
    return orElse();
  }
}

abstract class _MessageSent implements ChatEvent {
  const factory _MessageSent() = _$_MessageSent;
}

/// @nodoc
abstract class _$MessageChangedCopyWith<$Res> {
  factory _$MessageChangedCopyWith(
          _MessageChanged value, $Res Function(_MessageChanged) then) =
      __$MessageChangedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$MessageChangedCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$MessageChangedCopyWith<$Res> {
  __$MessageChangedCopyWithImpl(
      _MessageChanged _value, $Res Function(_MessageChanged) _then)
      : super(_value, (v) => _then(v as _MessageChanged));

  @override
  _MessageChanged get _value => super._value as _MessageChanged;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_MessageChanged(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MessageChanged implements _MessageChanged {
  const _$_MessageChanged(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatEvent.messageChanged(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageChanged &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$MessageChangedCopyWith<_MessageChanged> get copyWith =>
      __$MessageChangedCopyWithImpl<_MessageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emit,
    required TResult Function(List<ChatMessage> messages) messagedLoaded,
    required TResult Function() messageSent,
    required TResult Function(String message) messageChanged,
    required TResult Function() theOtherTyped,
    required TResult Function() typingSetFalse,
  }) {
    return messageChanged(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emit,
    TResult Function(List<ChatMessage> messages)? messagedLoaded,
    TResult Function()? messageSent,
    TResult Function(String message)? messageChanged,
    TResult Function()? theOtherTyped,
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
    required TResult Function(_Emit value) emit,
    required TResult Function(_MessagesLoaded value) messagedLoaded,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_TheOtherTyped value) theOtherTyped,
    required TResult Function(_TypingSetFalse value) typingSetFalse,
  }) {
    return messageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Emit value)? emit,
    TResult Function(_MessagesLoaded value)? messagedLoaded,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_TheOtherTyped value)? theOtherTyped,
    TResult Function(_TypingSetFalse value)? typingSetFalse,
    required TResult orElse(),
  }) {
    if (messageChanged != null) {
      return messageChanged(this);
    }
    return orElse();
  }
}

abstract class _MessageChanged implements ChatEvent {
  const factory _MessageChanged(String message) = _$_MessageChanged;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MessageChangedCopyWith<_MessageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TheOtherTypedCopyWith<$Res> {
  factory _$TheOtherTypedCopyWith(
          _TheOtherTyped value, $Res Function(_TheOtherTyped) then) =
      __$TheOtherTypedCopyWithImpl<$Res>;
}

/// @nodoc
class __$TheOtherTypedCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$TheOtherTypedCopyWith<$Res> {
  __$TheOtherTypedCopyWithImpl(
      _TheOtherTyped _value, $Res Function(_TheOtherTyped) _then)
      : super(_value, (v) => _then(v as _TheOtherTyped));

  @override
  _TheOtherTyped get _value => super._value as _TheOtherTyped;
}

/// @nodoc

class _$_TheOtherTyped implements _TheOtherTyped {
  const _$_TheOtherTyped();

  @override
  String toString() {
    return 'ChatEvent.theOtherTyped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TheOtherTyped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emit,
    required TResult Function(List<ChatMessage> messages) messagedLoaded,
    required TResult Function() messageSent,
    required TResult Function(String message) messageChanged,
    required TResult Function() theOtherTyped,
    required TResult Function() typingSetFalse,
  }) {
    return theOtherTyped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emit,
    TResult Function(List<ChatMessage> messages)? messagedLoaded,
    TResult Function()? messageSent,
    TResult Function(String message)? messageChanged,
    TResult Function()? theOtherTyped,
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
    required TResult Function(_Emit value) emit,
    required TResult Function(_MessagesLoaded value) messagedLoaded,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_TheOtherTyped value) theOtherTyped,
    required TResult Function(_TypingSetFalse value) typingSetFalse,
  }) {
    return theOtherTyped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Emit value)? emit,
    TResult Function(_MessagesLoaded value)? messagedLoaded,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_TheOtherTyped value)? theOtherTyped,
    TResult Function(_TypingSetFalse value)? typingSetFalse,
    required TResult orElse(),
  }) {
    if (theOtherTyped != null) {
      return theOtherTyped(this);
    }
    return orElse();
  }
}

abstract class _TheOtherTyped implements ChatEvent {
  const factory _TheOtherTyped() = _$_TheOtherTyped;
}

/// @nodoc
abstract class _$TypingSetFalseCopyWith<$Res> {
  factory _$TypingSetFalseCopyWith(
          _TypingSetFalse value, $Res Function(_TypingSetFalse) then) =
      __$TypingSetFalseCopyWithImpl<$Res>;
}

/// @nodoc
class __$TypingSetFalseCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$TypingSetFalseCopyWith<$Res> {
  __$TypingSetFalseCopyWithImpl(
      _TypingSetFalse _value, $Res Function(_TypingSetFalse) _then)
      : super(_value, (v) => _then(v as _TypingSetFalse));

  @override
  _TypingSetFalse get _value => super._value as _TypingSetFalse;
}

/// @nodoc

class _$_TypingSetFalse implements _TypingSetFalse {
  const _$_TypingSetFalse();

  @override
  String toString() {
    return 'ChatEvent.typingSetFalse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TypingSetFalse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emit,
    required TResult Function(List<ChatMessage> messages) messagedLoaded,
    required TResult Function() messageSent,
    required TResult Function(String message) messageChanged,
    required TResult Function() theOtherTyped,
    required TResult Function() typingSetFalse,
  }) {
    return typingSetFalse();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emit,
    TResult Function(List<ChatMessage> messages)? messagedLoaded,
    TResult Function()? messageSent,
    TResult Function(String message)? messageChanged,
    TResult Function()? theOtherTyped,
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
    required TResult Function(_Emit value) emit,
    required TResult Function(_MessagesLoaded value) messagedLoaded,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_MessageChanged value) messageChanged,
    required TResult Function(_TheOtherTyped value) theOtherTyped,
    required TResult Function(_TypingSetFalse value) typingSetFalse,
  }) {
    return typingSetFalse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Emit value)? emit,
    TResult Function(_MessagesLoaded value)? messagedLoaded,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_MessageChanged value)? messageChanged,
    TResult Function(_TheOtherTyped value)? theOtherTyped,
    TResult Function(_TypingSetFalse value)? typingSetFalse,
    required TResult orElse(),
  }) {
    if (typingSetFalse != null) {
      return typingSetFalse(this);
    }
    return orElse();
  }
}

abstract class _TypingSetFalse implements ChatEvent {
  const factory _TypingSetFalse() = _$_TypingSetFalse;
}

/// @nodoc
class _$ChatStateTearOff {
  const _$ChatStateTearOff();

  _ChatState call(
      {required List<ChatMessage> messages,
      required bool loading,
      required String message,
      required bool otherTyping,
      required bool user}) {
    return _ChatState(
      messages: messages,
      loading: loading,
      message: message,
      otherTyping: otherTyping,
      user: user,
    );
  }
}

/// @nodoc
const $ChatState = _$ChatStateTearOff();

/// @nodoc
mixin _$ChatState {
  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get otherTyping => throw _privateConstructorUsedError;
  bool get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
  $Res call(
      {List<ChatMessage> messages,
      bool loading,
      String message,
      bool otherTyping,
      bool user});
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
  }) {
    return _then(_value.copyWith(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
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
      {List<ChatMessage> messages,
      bool loading,
      String message,
      bool otherTyping,
      bool user});
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
  }) {
    return _then(_ChatState(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
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
      required this.user});

  @override
  final List<ChatMessage> messages;
  @override
  final bool loading;
  @override
  final String message;
  @override
  final bool otherTyping;
  @override
  final bool user;

  @override
  String toString() {
    return 'ChatState(messages: $messages, loading: $loading, message: $message, otherTyping: $otherTyping, user: $user)';
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
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(otherTyping) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$ChatStateCopyWith<_ChatState> get copyWith =>
      __$ChatStateCopyWithImpl<_ChatState>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {required List<ChatMessage> messages,
      required bool loading,
      required String message,
      required bool otherTyping,
      required bool user}) = _$_ChatState;

  @override
  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  bool get otherTyping => throw _privateConstructorUsedError;
  @override
  bool get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatStateCopyWith<_ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
