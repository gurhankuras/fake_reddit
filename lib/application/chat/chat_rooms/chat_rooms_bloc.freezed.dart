// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_rooms_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatRoomsEventTearOff {
  const _$ChatRoomsEventTearOff();

  FetchingStarted fetchingStarted() {
    return const FetchingStarted();
  }

  NewMessageReceived newMessageReceived(ChatMessageDTO message) {
    return NewMessageReceived(
      message,
    );
  }
}

/// @nodoc
const $ChatRoomsEvent = _$ChatRoomsEventTearOff();

/// @nodoc
mixin _$ChatRoomsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchingStarted,
    required TResult Function(ChatMessageDTO message) newMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchingStarted,
    TResult Function(ChatMessageDTO message)? newMessageReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchingStarted value) fetchingStarted,
    required TResult Function(NewMessageReceived value) newMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchingStarted value)? fetchingStarted,
    TResult Function(NewMessageReceived value)? newMessageReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomsEventCopyWith<$Res> {
  factory $ChatRoomsEventCopyWith(
          ChatRoomsEvent value, $Res Function(ChatRoomsEvent) then) =
      _$ChatRoomsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatRoomsEventCopyWithImpl<$Res>
    implements $ChatRoomsEventCopyWith<$Res> {
  _$ChatRoomsEventCopyWithImpl(this._value, this._then);

  final ChatRoomsEvent _value;
  // ignore: unused_field
  final $Res Function(ChatRoomsEvent) _then;
}

/// @nodoc
abstract class $FetchingStartedCopyWith<$Res> {
  factory $FetchingStartedCopyWith(
          FetchingStarted value, $Res Function(FetchingStarted) then) =
      _$FetchingStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchingStartedCopyWithImpl<$Res>
    extends _$ChatRoomsEventCopyWithImpl<$Res>
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
    return 'ChatRoomsEvent.fetchingStarted()';
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
    required TResult Function(ChatMessageDTO message) newMessageReceived,
  }) {
    return fetchingStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchingStarted,
    TResult Function(ChatMessageDTO message)? newMessageReceived,
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
    required TResult Function(NewMessageReceived value) newMessageReceived,
  }) {
    return fetchingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchingStarted value)? fetchingStarted,
    TResult Function(NewMessageReceived value)? newMessageReceived,
    required TResult orElse(),
  }) {
    if (fetchingStarted != null) {
      return fetchingStarted(this);
    }
    return orElse();
  }
}

abstract class FetchingStarted implements ChatRoomsEvent {
  const factory FetchingStarted() = _$FetchingStarted;
}

/// @nodoc
abstract class $NewMessageReceivedCopyWith<$Res> {
  factory $NewMessageReceivedCopyWith(
          NewMessageReceived value, $Res Function(NewMessageReceived) then) =
      _$NewMessageReceivedCopyWithImpl<$Res>;
  $Res call({ChatMessageDTO message});
}

/// @nodoc
class _$NewMessageReceivedCopyWithImpl<$Res>
    extends _$ChatRoomsEventCopyWithImpl<$Res>
    implements $NewMessageReceivedCopyWith<$Res> {
  _$NewMessageReceivedCopyWithImpl(
      NewMessageReceived _value, $Res Function(NewMessageReceived) _then)
      : super(_value, (v) => _then(v as NewMessageReceived));

  @override
  NewMessageReceived get _value => super._value as NewMessageReceived;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(NewMessageReceived(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessageDTO,
    ));
  }
}

/// @nodoc

class _$NewMessageReceived implements NewMessageReceived {
  const _$NewMessageReceived(this.message);

  @override
  final ChatMessageDTO message;

  @override
  String toString() {
    return 'ChatRoomsEvent.newMessageReceived(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewMessageReceived &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $NewMessageReceivedCopyWith<NewMessageReceived> get copyWith =>
      _$NewMessageReceivedCopyWithImpl<NewMessageReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchingStarted,
    required TResult Function(ChatMessageDTO message) newMessageReceived,
  }) {
    return newMessageReceived(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchingStarted,
    TResult Function(ChatMessageDTO message)? newMessageReceived,
    required TResult orElse(),
  }) {
    if (newMessageReceived != null) {
      return newMessageReceived(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchingStarted value) fetchingStarted,
    required TResult Function(NewMessageReceived value) newMessageReceived,
  }) {
    return newMessageReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchingStarted value)? fetchingStarted,
    TResult Function(NewMessageReceived value)? newMessageReceived,
    required TResult orElse(),
  }) {
    if (newMessageReceived != null) {
      return newMessageReceived(this);
    }
    return orElse();
  }
}

abstract class NewMessageReceived implements ChatRoomsEvent {
  const factory NewMessageReceived(ChatMessageDTO message) =
      _$NewMessageReceived;

  ChatMessageDTO get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewMessageReceivedCopyWith<NewMessageReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatRoomsStateTearOff {
  const _$ChatRoomsStateTearOff();

  _ChatRoomsState call(
      {required List<ChatRoom> chatRooms, required bool loading}) {
    return _ChatRoomsState(
      chatRooms: chatRooms,
      loading: loading,
    );
  }
}

/// @nodoc
const $ChatRoomsState = _$ChatRoomsStateTearOff();

/// @nodoc
mixin _$ChatRoomsState {
  List<ChatRoom> get chatRooms => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatRoomsStateCopyWith<ChatRoomsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomsStateCopyWith<$Res> {
  factory $ChatRoomsStateCopyWith(
          ChatRoomsState value, $Res Function(ChatRoomsState) then) =
      _$ChatRoomsStateCopyWithImpl<$Res>;
  $Res call({List<ChatRoom> chatRooms, bool loading});
}

/// @nodoc
class _$ChatRoomsStateCopyWithImpl<$Res>
    implements $ChatRoomsStateCopyWith<$Res> {
  _$ChatRoomsStateCopyWithImpl(this._value, this._then);

  final ChatRoomsState _value;
  // ignore: unused_field
  final $Res Function(ChatRoomsState) _then;

  @override
  $Res call({
    Object? chatRooms = freezed,
    Object? loading = freezed,
  }) {
    return _then(_value.copyWith(
      chatRooms: chatRooms == freezed
          ? _value.chatRooms
          : chatRooms // ignore: cast_nullable_to_non_nullable
              as List<ChatRoom>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ChatRoomsStateCopyWith<$Res>
    implements $ChatRoomsStateCopyWith<$Res> {
  factory _$ChatRoomsStateCopyWith(
          _ChatRoomsState value, $Res Function(_ChatRoomsState) then) =
      __$ChatRoomsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ChatRoom> chatRooms, bool loading});
}

/// @nodoc
class __$ChatRoomsStateCopyWithImpl<$Res>
    extends _$ChatRoomsStateCopyWithImpl<$Res>
    implements _$ChatRoomsStateCopyWith<$Res> {
  __$ChatRoomsStateCopyWithImpl(
      _ChatRoomsState _value, $Res Function(_ChatRoomsState) _then)
      : super(_value, (v) => _then(v as _ChatRoomsState));

  @override
  _ChatRoomsState get _value => super._value as _ChatRoomsState;

  @override
  $Res call({
    Object? chatRooms = freezed,
    Object? loading = freezed,
  }) {
    return _then(_ChatRoomsState(
      chatRooms: chatRooms == freezed
          ? _value.chatRooms
          : chatRooms // ignore: cast_nullable_to_non_nullable
              as List<ChatRoom>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChatRoomsState implements _ChatRoomsState {
  _$_ChatRoomsState({required this.chatRooms, required this.loading});

  @override
  final List<ChatRoom> chatRooms;
  @override
  final bool loading;

  @override
  String toString() {
    return 'ChatRoomsState(chatRooms: $chatRooms, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatRoomsState &&
            (identical(other.chatRooms, chatRooms) ||
                const DeepCollectionEquality()
                    .equals(other.chatRooms, chatRooms)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality().equals(other.loading, loading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chatRooms) ^
      const DeepCollectionEquality().hash(loading);

  @JsonKey(ignore: true)
  @override
  _$ChatRoomsStateCopyWith<_ChatRoomsState> get copyWith =>
      __$ChatRoomsStateCopyWithImpl<_ChatRoomsState>(this, _$identity);
}

abstract class _ChatRoomsState implements ChatRoomsState {
  factory _ChatRoomsState(
      {required List<ChatRoom> chatRooms,
      required bool loading}) = _$_ChatRoomsState;

  @override
  List<ChatRoom> get chatRooms => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatRoomsStateCopyWith<_ChatRoomsState> get copyWith =>
      throw _privateConstructorUsedError;
}
