// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationEventTearOff {
  const _$NotificationEventTearOff();

  _NotificationInfoFetchingStarted notificationInfoFetchingStarted() {
    return const _NotificationInfoFetchingStarted();
  }

  _MessageRead messageRead(String id) {
    return _MessageRead(
      id,
    );
  }

  _NewMessageReceived newMessageReceived(NotificationInfo info) {
    return _NewMessageReceived(
      info,
    );
  }
}

/// @nodoc
const $NotificationEvent = _$NotificationEventTearOff();

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notificationInfoFetchingStarted,
    required TResult Function(String id) messageRead,
    required TResult Function(NotificationInfo info) newMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notificationInfoFetchingStarted,
    TResult Function(String id)? messageRead,
    TResult Function(NotificationInfo info)? newMessageReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationInfoFetchingStarted value)
        notificationInfoFetchingStarted,
    required TResult Function(_MessageRead value) messageRead,
    required TResult Function(_NewMessageReceived value) newMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationInfoFetchingStarted value)?
        notificationInfoFetchingStarted,
    TResult Function(_MessageRead value)? messageRead,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  final NotificationEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationEvent) _then;
}

/// @nodoc
abstract class _$NotificationInfoFetchingStartedCopyWith<$Res> {
  factory _$NotificationInfoFetchingStartedCopyWith(
          _NotificationInfoFetchingStarted value,
          $Res Function(_NotificationInfoFetchingStarted) then) =
      __$NotificationInfoFetchingStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotificationInfoFetchingStartedCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements _$NotificationInfoFetchingStartedCopyWith<$Res> {
  __$NotificationInfoFetchingStartedCopyWithImpl(
      _NotificationInfoFetchingStarted _value,
      $Res Function(_NotificationInfoFetchingStarted) _then)
      : super(_value, (v) => _then(v as _NotificationInfoFetchingStarted));

  @override
  _NotificationInfoFetchingStarted get _value =>
      super._value as _NotificationInfoFetchingStarted;
}

/// @nodoc

class _$_NotificationInfoFetchingStarted
    implements _NotificationInfoFetchingStarted {
  const _$_NotificationInfoFetchingStarted();

  @override
  String toString() {
    return 'NotificationEvent.notificationInfoFetchingStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationInfoFetchingStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notificationInfoFetchingStarted,
    required TResult Function(String id) messageRead,
    required TResult Function(NotificationInfo info) newMessageReceived,
  }) {
    return notificationInfoFetchingStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notificationInfoFetchingStarted,
    TResult Function(String id)? messageRead,
    TResult Function(NotificationInfo info)? newMessageReceived,
    required TResult orElse(),
  }) {
    if (notificationInfoFetchingStarted != null) {
      return notificationInfoFetchingStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationInfoFetchingStarted value)
        notificationInfoFetchingStarted,
    required TResult Function(_MessageRead value) messageRead,
    required TResult Function(_NewMessageReceived value) newMessageReceived,
  }) {
    return notificationInfoFetchingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationInfoFetchingStarted value)?
        notificationInfoFetchingStarted,
    TResult Function(_MessageRead value)? messageRead,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    required TResult orElse(),
  }) {
    if (notificationInfoFetchingStarted != null) {
      return notificationInfoFetchingStarted(this);
    }
    return orElse();
  }
}

abstract class _NotificationInfoFetchingStarted implements NotificationEvent {
  const factory _NotificationInfoFetchingStarted() =
      _$_NotificationInfoFetchingStarted;
}

/// @nodoc
abstract class _$MessageReadCopyWith<$Res> {
  factory _$MessageReadCopyWith(
          _MessageRead value, $Res Function(_MessageRead) then) =
      __$MessageReadCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$MessageReadCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements _$MessageReadCopyWith<$Res> {
  __$MessageReadCopyWithImpl(
      _MessageRead _value, $Res Function(_MessageRead) _then)
      : super(_value, (v) => _then(v as _MessageRead));

  @override
  _MessageRead get _value => super._value as _MessageRead;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_MessageRead(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MessageRead implements _MessageRead {
  const _$_MessageRead(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'NotificationEvent.messageRead(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageRead &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$MessageReadCopyWith<_MessageRead> get copyWith =>
      __$MessageReadCopyWithImpl<_MessageRead>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notificationInfoFetchingStarted,
    required TResult Function(String id) messageRead,
    required TResult Function(NotificationInfo info) newMessageReceived,
  }) {
    return messageRead(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notificationInfoFetchingStarted,
    TResult Function(String id)? messageRead,
    TResult Function(NotificationInfo info)? newMessageReceived,
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
    required TResult Function(_NotificationInfoFetchingStarted value)
        notificationInfoFetchingStarted,
    required TResult Function(_MessageRead value) messageRead,
    required TResult Function(_NewMessageReceived value) newMessageReceived,
  }) {
    return messageRead(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationInfoFetchingStarted value)?
        notificationInfoFetchingStarted,
    TResult Function(_MessageRead value)? messageRead,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    required TResult orElse(),
  }) {
    if (messageRead != null) {
      return messageRead(this);
    }
    return orElse();
  }
}

abstract class _MessageRead implements NotificationEvent {
  const factory _MessageRead(String id) = _$_MessageRead;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MessageReadCopyWith<_MessageRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NewMessageReceivedCopyWith<$Res> {
  factory _$NewMessageReceivedCopyWith(
          _NewMessageReceived value, $Res Function(_NewMessageReceived) then) =
      __$NewMessageReceivedCopyWithImpl<$Res>;
  $Res call({NotificationInfo info});
}

/// @nodoc
class __$NewMessageReceivedCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements _$NewMessageReceivedCopyWith<$Res> {
  __$NewMessageReceivedCopyWithImpl(
      _NewMessageReceived _value, $Res Function(_NewMessageReceived) _then)
      : super(_value, (v) => _then(v as _NewMessageReceived));

  @override
  _NewMessageReceived get _value => super._value as _NewMessageReceived;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(_NewMessageReceived(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as NotificationInfo,
    ));
  }
}

/// @nodoc

class _$_NewMessageReceived implements _NewMessageReceived {
  const _$_NewMessageReceived(this.info);

  @override
  final NotificationInfo info;

  @override
  String toString() {
    return 'NotificationEvent.newMessageReceived(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewMessageReceived &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  _$NewMessageReceivedCopyWith<_NewMessageReceived> get copyWith =>
      __$NewMessageReceivedCopyWithImpl<_NewMessageReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notificationInfoFetchingStarted,
    required TResult Function(String id) messageRead,
    required TResult Function(NotificationInfo info) newMessageReceived,
  }) {
    return newMessageReceived(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notificationInfoFetchingStarted,
    TResult Function(String id)? messageRead,
    TResult Function(NotificationInfo info)? newMessageReceived,
    required TResult orElse(),
  }) {
    if (newMessageReceived != null) {
      return newMessageReceived(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationInfoFetchingStarted value)
        notificationInfoFetchingStarted,
    required TResult Function(_MessageRead value) messageRead,
    required TResult Function(_NewMessageReceived value) newMessageReceived,
  }) {
    return newMessageReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationInfoFetchingStarted value)?
        notificationInfoFetchingStarted,
    TResult Function(_MessageRead value)? messageRead,
    TResult Function(_NewMessageReceived value)? newMessageReceived,
    required TResult orElse(),
  }) {
    if (newMessageReceived != null) {
      return newMessageReceived(this);
    }
    return orElse();
  }
}

abstract class _NewMessageReceived implements NotificationEvent {
  const factory _NewMessageReceived(NotificationInfo info) =
      _$_NewMessageReceived;

  NotificationInfo get info => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NewMessageReceivedCopyWith<_NewMessageReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NotificationStateTearOff {
  const _$NotificationStateTearOff();

  _NotificationState call({required Option<NotificationInfo> info}) {
    return _NotificationState(
      info: info,
    );
  }
}

/// @nodoc
const $NotificationState = _$NotificationStateTearOff();

/// @nodoc
mixin _$NotificationState {
  Option<NotificationInfo> get info => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res>;
  $Res call({Option<NotificationInfo> info});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  final NotificationState _value;
  // ignore: unused_field
  final $Res Function(NotificationState) _then;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Option<NotificationInfo>,
    ));
  }
}

/// @nodoc
abstract class _$NotificationStateCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$NotificationStateCopyWith(
          _NotificationState value, $Res Function(_NotificationState) then) =
      __$NotificationStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<NotificationInfo> info});
}

/// @nodoc
class __$NotificationStateCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res>
    implements _$NotificationStateCopyWith<$Res> {
  __$NotificationStateCopyWithImpl(
      _NotificationState _value, $Res Function(_NotificationState) _then)
      : super(_value, (v) => _then(v as _NotificationState));

  @override
  _NotificationState get _value => super._value as _NotificationState;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(_NotificationState(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Option<NotificationInfo>,
    ));
  }
}

/// @nodoc

class _$_NotificationState implements _NotificationState {
  const _$_NotificationState({required this.info});

  @override
  final Option<NotificationInfo> info;

  @override
  String toString() {
    return 'NotificationState(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationState &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  _$NotificationStateCopyWith<_NotificationState> get copyWith =>
      __$NotificationStateCopyWithImpl<_NotificationState>(this, _$identity);
}

abstract class _NotificationState implements NotificationState {
  const factory _NotificationState({required Option<NotificationInfo> info}) =
      _$_NotificationState;

  @override
  Option<NotificationInfo> get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NotificationStateCopyWith<_NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
