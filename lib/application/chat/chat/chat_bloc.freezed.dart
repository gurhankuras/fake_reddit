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

  _MessagesLoaded messagedLoaded() {
    return const _MessagesLoaded();
  }

  _MessageSent messageSent() {
    return const _MessageSent();
  }

  _MessageChanged messageChanged(String message) {
    return _MessageChanged(
      message,
    );
  }
}

/// @nodoc
const $ChatEvent = _$ChatEventTearOff();

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emit,
    required TResult Function() messagedLoaded,
    required TResult Function() messageSent,
    required TResult Function(String message) messageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emit,
    TResult Function()? messagedLoaded,
    TResult Function()? messageSent,
    TResult Function(String message)? messageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Emit value) emit,
    required TResult Function(_MessagesLoaded value) messagedLoaded,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_MessageChanged value) messageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Emit value)? emit,
    TResult Function(_MessagesLoaded value)? messagedLoaded,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_MessageChanged value)? messageChanged,
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
    required TResult Function() messagedLoaded,
    required TResult Function() messageSent,
    required TResult Function(String message) messageChanged,
  }) {
    return emit();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emit,
    TResult Function()? messagedLoaded,
    TResult Function()? messageSent,
    TResult Function(String message)? messageChanged,
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
}

/// @nodoc
class __$MessagesLoadedCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$MessagesLoadedCopyWith<$Res> {
  __$MessagesLoadedCopyWithImpl(
      _MessagesLoaded _value, $Res Function(_MessagesLoaded) _then)
      : super(_value, (v) => _then(v as _MessagesLoaded));

  @override
  _MessagesLoaded get _value => super._value as _MessagesLoaded;
}

/// @nodoc

class _$_MessagesLoaded implements _MessagesLoaded {
  const _$_MessagesLoaded();

  @override
  String toString() {
    return 'ChatEvent.messagedLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MessagesLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emit,
    required TResult Function() messagedLoaded,
    required TResult Function() messageSent,
    required TResult Function(String message) messageChanged,
  }) {
    return messagedLoaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emit,
    TResult Function()? messagedLoaded,
    TResult Function()? messageSent,
    TResult Function(String message)? messageChanged,
    required TResult orElse(),
  }) {
    if (messagedLoaded != null) {
      return messagedLoaded();
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
    required TResult orElse(),
  }) {
    if (messagedLoaded != null) {
      return messagedLoaded(this);
    }
    return orElse();
  }
}

abstract class _MessagesLoaded implements ChatEvent {
  const factory _MessagesLoaded() = _$_MessagesLoaded;
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
    required TResult Function() messagedLoaded,
    required TResult Function() messageSent,
    required TResult Function(String message) messageChanged,
  }) {
    return messageSent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emit,
    TResult Function()? messagedLoaded,
    TResult Function()? messageSent,
    TResult Function(String message)? messageChanged,
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
    required TResult Function() messagedLoaded,
    required TResult Function() messageSent,
    required TResult Function(String message) messageChanged,
  }) {
    return messageChanged(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emit,
    TResult Function()? messagedLoaded,
    TResult Function()? messageSent,
    TResult Function(String message)? messageChanged,
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
class _$ChatStateTearOff {
  const _$ChatStateTearOff();

  _ChatState call(
      {required List<ChatMessage> messages,
      required bool loading,
      required String message}) {
    return _ChatState(
      messages: messages,
      loading: loading,
      message: message,
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

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
  $Res call({List<ChatMessage> messages, bool loading, String message});
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
    ));
  }
}

/// @nodoc
abstract class _$ChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$ChatStateCopyWith(
          _ChatState value, $Res Function(_ChatState) then) =
      __$ChatStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ChatMessage> messages, bool loading, String message});
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
    ));
  }
}

/// @nodoc

class _$_ChatState implements _ChatState {
  const _$_ChatState(
      {required this.messages, required this.loading, required this.message});

  @override
  final List<ChatMessage> messages;
  @override
  final bool loading;
  @override
  final String message;

  @override
  String toString() {
    return 'ChatState(messages: $messages, loading: $loading, message: $message)';
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
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ChatStateCopyWith<_ChatState> get copyWith =>
      __$ChatStateCopyWithImpl<_ChatState>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {required List<ChatMessage> messages,
      required bool loading,
      required String message}) = _$_ChatState;

  @override
  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatStateCopyWith<_ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
