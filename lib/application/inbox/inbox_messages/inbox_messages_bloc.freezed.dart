// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inbox_messages_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InboxMessagesEventTearOff {
  const _$InboxMessagesEventTearOff();

  FetchingStarted fetchingStarted() {
    return const FetchingStarted();
  }

  MessageRead messageRead(String id) {
    return MessageRead(
      id,
    );
  }
}

/// @nodoc
const $InboxMessagesEvent = _$InboxMessagesEventTearOff();

/// @nodoc
mixin _$InboxMessagesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchingStarted,
    required TResult Function(String id) messageRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchingStarted,
    TResult Function(String id)? messageRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchingStarted value) fetchingStarted,
    required TResult Function(MessageRead value) messageRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchingStarted value)? fetchingStarted,
    TResult Function(MessageRead value)? messageRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxMessagesEventCopyWith<$Res> {
  factory $InboxMessagesEventCopyWith(
          InboxMessagesEvent value, $Res Function(InboxMessagesEvent) then) =
      _$InboxMessagesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InboxMessagesEventCopyWithImpl<$Res>
    implements $InboxMessagesEventCopyWith<$Res> {
  _$InboxMessagesEventCopyWithImpl(this._value, this._then);

  final InboxMessagesEvent _value;
  // ignore: unused_field
  final $Res Function(InboxMessagesEvent) _then;
}

/// @nodoc
abstract class $FetchingStartedCopyWith<$Res> {
  factory $FetchingStartedCopyWith(
          FetchingStarted value, $Res Function(FetchingStarted) then) =
      _$FetchingStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchingStartedCopyWithImpl<$Res>
    extends _$InboxMessagesEventCopyWithImpl<$Res>
    implements $FetchingStartedCopyWith<$Res> {
  _$FetchingStartedCopyWithImpl(
      FetchingStarted _value, $Res Function(FetchingStarted) _then)
      : super(_value, (v) => _then(v as FetchingStarted));

  @override
  FetchingStarted get _value => super._value as FetchingStarted;
}

/// @nodoc

class _$FetchingStarted implements FetchingStarted {
  const _$FetchingStarted();

  @override
  String toString() {
    return 'InboxMessagesEvent.fetchingStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchingStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchingStarted,
    required TResult Function(String id) messageRead,
  }) {
    return fetchingStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchingStarted,
    TResult Function(String id)? messageRead,
    required TResult orElse(),
  }) {
    if (fetchingStarted != null) {
      return fetchingStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchingStarted value) fetchingStarted,
    required TResult Function(MessageRead value) messageRead,
  }) {
    return fetchingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchingStarted value)? fetchingStarted,
    TResult Function(MessageRead value)? messageRead,
    required TResult orElse(),
  }) {
    if (fetchingStarted != null) {
      return fetchingStarted(this);
    }
    return orElse();
  }
}

abstract class FetchingStarted implements InboxMessagesEvent {
  const factory FetchingStarted() = _$FetchingStarted;
}

/// @nodoc
abstract class $MessageReadCopyWith<$Res> {
  factory $MessageReadCopyWith(
          MessageRead value, $Res Function(MessageRead) then) =
      _$MessageReadCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$MessageReadCopyWithImpl<$Res>
    extends _$InboxMessagesEventCopyWithImpl<$Res>
    implements $MessageReadCopyWith<$Res> {
  _$MessageReadCopyWithImpl(
      MessageRead _value, $Res Function(MessageRead) _then)
      : super(_value, (v) => _then(v as MessageRead));

  @override
  MessageRead get _value => super._value as MessageRead;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(MessageRead(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageRead implements MessageRead {
  const _$MessageRead(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'InboxMessagesEvent.messageRead(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MessageRead &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $MessageReadCopyWith<MessageRead> get copyWith =>
      _$MessageReadCopyWithImpl<MessageRead>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchingStarted,
    required TResult Function(String id) messageRead,
  }) {
    return messageRead(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchingStarted,
    TResult Function(String id)? messageRead,
    required TResult orElse(),
  }) {
    if (messageRead != null) {
      return messageRead(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchingStarted value) fetchingStarted,
    required TResult Function(MessageRead value) messageRead,
  }) {
    return messageRead(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchingStarted value)? fetchingStarted,
    TResult Function(MessageRead value)? messageRead,
    required TResult orElse(),
  }) {
    if (messageRead != null) {
      return messageRead(this);
    }
    return orElse();
  }
}

abstract class MessageRead implements InboxMessagesEvent {
  const factory MessageRead(String id) = _$MessageRead;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageReadCopyWith<MessageRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$InboxMessagesStateTearOff {
  const _$InboxMessagesStateTearOff();

  _InboxMessagesState call(
      {required List<InboxMessage> messages,
      required bool loading,
      required bool failed}) {
    return _InboxMessagesState(
      messages: messages,
      loading: loading,
      failed: failed,
    );
  }
}

/// @nodoc
const $InboxMessagesState = _$InboxMessagesStateTearOff();

/// @nodoc
mixin _$InboxMessagesState {
  List<InboxMessage> get messages => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InboxMessagesStateCopyWith<InboxMessagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxMessagesStateCopyWith<$Res> {
  factory $InboxMessagesStateCopyWith(
          InboxMessagesState value, $Res Function(InboxMessagesState) then) =
      _$InboxMessagesStateCopyWithImpl<$Res>;
  $Res call({List<InboxMessage> messages, bool loading, bool failed});
}

/// @nodoc
class _$InboxMessagesStateCopyWithImpl<$Res>
    implements $InboxMessagesStateCopyWith<$Res> {
  _$InboxMessagesStateCopyWithImpl(this._value, this._then);

  final InboxMessagesState _value;
  // ignore: unused_field
  final $Res Function(InboxMessagesState) _then;

  @override
  $Res call({
    Object? messages = freezed,
    Object? loading = freezed,
    Object? failed = freezed,
  }) {
    return _then(_value.copyWith(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<InboxMessage>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      failed: failed == freezed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InboxMessagesStateCopyWith<$Res>
    implements $InboxMessagesStateCopyWith<$Res> {
  factory _$InboxMessagesStateCopyWith(
          _InboxMessagesState value, $Res Function(_InboxMessagesState) then) =
      __$InboxMessagesStateCopyWithImpl<$Res>;
  @override
  $Res call({List<InboxMessage> messages, bool loading, bool failed});
}

/// @nodoc
class __$InboxMessagesStateCopyWithImpl<$Res>
    extends _$InboxMessagesStateCopyWithImpl<$Res>
    implements _$InboxMessagesStateCopyWith<$Res> {
  __$InboxMessagesStateCopyWithImpl(
      _InboxMessagesState _value, $Res Function(_InboxMessagesState) _then)
      : super(_value, (v) => _then(v as _InboxMessagesState));

  @override
  _InboxMessagesState get _value => super._value as _InboxMessagesState;

  @override
  $Res call({
    Object? messages = freezed,
    Object? loading = freezed,
    Object? failed = freezed,
  }) {
    return _then(_InboxMessagesState(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<InboxMessage>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      failed: failed == freezed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InboxMessagesState implements _InboxMessagesState {
  const _$_InboxMessagesState(
      {required this.messages, required this.loading, required this.failed});

  @override
  final List<InboxMessage> messages;
  @override
  final bool loading;
  @override
  final bool failed;

  @override
  String toString() {
    return 'InboxMessagesState(messages: $messages, loading: $loading, failed: $failed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InboxMessagesState &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.failed, failed) ||
                const DeepCollectionEquality().equals(other.failed, failed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(failed);

  @JsonKey(ignore: true)
  @override
  _$InboxMessagesStateCopyWith<_InboxMessagesState> get copyWith =>
      __$InboxMessagesStateCopyWithImpl<_InboxMessagesState>(this, _$identity);
}

abstract class _InboxMessagesState implements InboxMessagesState {
  const factory _InboxMessagesState(
      {required List<InboxMessage> messages,
      required bool loading,
      required bool failed}) = _$_InboxMessagesState;

  @override
  List<InboxMessage> get messages => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  bool get failed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InboxMessagesStateCopyWith<_InboxMessagesState> get copyWith =>
      throw _privateConstructorUsedError;
}
