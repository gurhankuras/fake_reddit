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

  _ActivityRead activityRead(String id) {
    return _ActivityRead(
      id,
    );
  }

  _InboxMessageRead inboxMessageRead(String id) {
    return _InboxMessageRead(
      id,
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
    required TResult Function(String id) activityRead,
    required TResult Function(String id) inboxMessageRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notificationInfoFetchingStarted,
    TResult Function(String id)? messageRead,
    TResult Function(String id)? activityRead,
    TResult Function(String id)? inboxMessageRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationInfoFetchingStarted value)
        notificationInfoFetchingStarted,
    required TResult Function(_MessageRead value) messageRead,
    required TResult Function(_ActivityRead value) activityRead,
    required TResult Function(_InboxMessageRead value) inboxMessageRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationInfoFetchingStarted value)?
        notificationInfoFetchingStarted,
    TResult Function(_MessageRead value)? messageRead,
    TResult Function(_ActivityRead value)? activityRead,
    TResult Function(_InboxMessageRead value)? inboxMessageRead,
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
    required TResult Function(String id) activityRead,
    required TResult Function(String id) inboxMessageRead,
  }) {
    return notificationInfoFetchingStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notificationInfoFetchingStarted,
    TResult Function(String id)? messageRead,
    TResult Function(String id)? activityRead,
    TResult Function(String id)? inboxMessageRead,
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
    required TResult Function(_ActivityRead value) activityRead,
    required TResult Function(_InboxMessageRead value) inboxMessageRead,
  }) {
    return notificationInfoFetchingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationInfoFetchingStarted value)?
        notificationInfoFetchingStarted,
    TResult Function(_MessageRead value)? messageRead,
    TResult Function(_ActivityRead value)? activityRead,
    TResult Function(_InboxMessageRead value)? inboxMessageRead,
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
    required TResult Function(String id) activityRead,
    required TResult Function(String id) inboxMessageRead,
  }) {
    return messageRead(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notificationInfoFetchingStarted,
    TResult Function(String id)? messageRead,
    TResult Function(String id)? activityRead,
    TResult Function(String id)? inboxMessageRead,
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
    required TResult Function(_ActivityRead value) activityRead,
    required TResult Function(_InboxMessageRead value) inboxMessageRead,
  }) {
    return messageRead(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationInfoFetchingStarted value)?
        notificationInfoFetchingStarted,
    TResult Function(_MessageRead value)? messageRead,
    TResult Function(_ActivityRead value)? activityRead,
    TResult Function(_InboxMessageRead value)? inboxMessageRead,
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
abstract class _$ActivityReadCopyWith<$Res> {
  factory _$ActivityReadCopyWith(
          _ActivityRead value, $Res Function(_ActivityRead) then) =
      __$ActivityReadCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$ActivityReadCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements _$ActivityReadCopyWith<$Res> {
  __$ActivityReadCopyWithImpl(
      _ActivityRead _value, $Res Function(_ActivityRead) _then)
      : super(_value, (v) => _then(v as _ActivityRead));

  @override
  _ActivityRead get _value => super._value as _ActivityRead;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_ActivityRead(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ActivityRead implements _ActivityRead {
  const _$_ActivityRead(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'NotificationEvent.activityRead(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActivityRead &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ActivityReadCopyWith<_ActivityRead> get copyWith =>
      __$ActivityReadCopyWithImpl<_ActivityRead>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notificationInfoFetchingStarted,
    required TResult Function(String id) messageRead,
    required TResult Function(String id) activityRead,
    required TResult Function(String id) inboxMessageRead,
  }) {
    return activityRead(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notificationInfoFetchingStarted,
    TResult Function(String id)? messageRead,
    TResult Function(String id)? activityRead,
    TResult Function(String id)? inboxMessageRead,
    required TResult orElse(),
  }) {
    if (activityRead != null) {
      return activityRead(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationInfoFetchingStarted value)
        notificationInfoFetchingStarted,
    required TResult Function(_MessageRead value) messageRead,
    required TResult Function(_ActivityRead value) activityRead,
    required TResult Function(_InboxMessageRead value) inboxMessageRead,
  }) {
    return activityRead(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationInfoFetchingStarted value)?
        notificationInfoFetchingStarted,
    TResult Function(_MessageRead value)? messageRead,
    TResult Function(_ActivityRead value)? activityRead,
    TResult Function(_InboxMessageRead value)? inboxMessageRead,
    required TResult orElse(),
  }) {
    if (activityRead != null) {
      return activityRead(this);
    }
    return orElse();
  }
}

abstract class _ActivityRead implements NotificationEvent {
  const factory _ActivityRead(String id) = _$_ActivityRead;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ActivityReadCopyWith<_ActivityRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InboxMessageReadCopyWith<$Res> {
  factory _$InboxMessageReadCopyWith(
          _InboxMessageRead value, $Res Function(_InboxMessageRead) then) =
      __$InboxMessageReadCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$InboxMessageReadCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements _$InboxMessageReadCopyWith<$Res> {
  __$InboxMessageReadCopyWithImpl(
      _InboxMessageRead _value, $Res Function(_InboxMessageRead) _then)
      : super(_value, (v) => _then(v as _InboxMessageRead));

  @override
  _InboxMessageRead get _value => super._value as _InboxMessageRead;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_InboxMessageRead(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InboxMessageRead implements _InboxMessageRead {
  const _$_InboxMessageRead(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'NotificationEvent.inboxMessageRead(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InboxMessageRead &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$InboxMessageReadCopyWith<_InboxMessageRead> get copyWith =>
      __$InboxMessageReadCopyWithImpl<_InboxMessageRead>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notificationInfoFetchingStarted,
    required TResult Function(String id) messageRead,
    required TResult Function(String id) activityRead,
    required TResult Function(String id) inboxMessageRead,
  }) {
    return inboxMessageRead(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notificationInfoFetchingStarted,
    TResult Function(String id)? messageRead,
    TResult Function(String id)? activityRead,
    TResult Function(String id)? inboxMessageRead,
    required TResult orElse(),
  }) {
    if (inboxMessageRead != null) {
      return inboxMessageRead(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationInfoFetchingStarted value)
        notificationInfoFetchingStarted,
    required TResult Function(_MessageRead value) messageRead,
    required TResult Function(_ActivityRead value) activityRead,
    required TResult Function(_InboxMessageRead value) inboxMessageRead,
  }) {
    return inboxMessageRead(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationInfoFetchingStarted value)?
        notificationInfoFetchingStarted,
    TResult Function(_MessageRead value)? messageRead,
    TResult Function(_ActivityRead value)? activityRead,
    TResult Function(_InboxMessageRead value)? inboxMessageRead,
    required TResult orElse(),
  }) {
    if (inboxMessageRead != null) {
      return inboxMessageRead(this);
    }
    return orElse();
  }
}

abstract class _InboxMessageRead implements NotificationEvent {
  const factory _InboxMessageRead(String id) = _$_InboxMessageRead;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InboxMessageReadCopyWith<_InboxMessageRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NotificationStateTearOff {
  const _$NotificationStateTearOff();

  _NotificationState call(
      {required int unreadMessageCount,
      required int inboxUnreadMessageCount,
      required int unreadActivitiesCount}) {
    return _NotificationState(
      unreadMessageCount: unreadMessageCount,
      inboxUnreadMessageCount: inboxUnreadMessageCount,
      unreadActivitiesCount: unreadActivitiesCount,
    );
  }
}

/// @nodoc
const $NotificationState = _$NotificationStateTearOff();

/// @nodoc
mixin _$NotificationState {
  int get unreadMessageCount => throw _privateConstructorUsedError;
  int get inboxUnreadMessageCount => throw _privateConstructorUsedError;
  int get unreadActivitiesCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res>;
  $Res call(
      {int unreadMessageCount,
      int inboxUnreadMessageCount,
      int unreadActivitiesCount});
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
    Object? unreadMessageCount = freezed,
    Object? inboxUnreadMessageCount = freezed,
    Object? unreadActivitiesCount = freezed,
  }) {
    return _then(_value.copyWith(
      unreadMessageCount: unreadMessageCount == freezed
          ? _value.unreadMessageCount
          : unreadMessageCount // ignore: cast_nullable_to_non_nullable
              as int,
      inboxUnreadMessageCount: inboxUnreadMessageCount == freezed
          ? _value.inboxUnreadMessageCount
          : inboxUnreadMessageCount // ignore: cast_nullable_to_non_nullable
              as int,
      unreadActivitiesCount: unreadActivitiesCount == freezed
          ? _value.unreadActivitiesCount
          : unreadActivitiesCount // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call(
      {int unreadMessageCount,
      int inboxUnreadMessageCount,
      int unreadActivitiesCount});
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
    Object? unreadMessageCount = freezed,
    Object? inboxUnreadMessageCount = freezed,
    Object? unreadActivitiesCount = freezed,
  }) {
    return _then(_NotificationState(
      unreadMessageCount: unreadMessageCount == freezed
          ? _value.unreadMessageCount
          : unreadMessageCount // ignore: cast_nullable_to_non_nullable
              as int,
      inboxUnreadMessageCount: inboxUnreadMessageCount == freezed
          ? _value.inboxUnreadMessageCount
          : inboxUnreadMessageCount // ignore: cast_nullable_to_non_nullable
              as int,
      unreadActivitiesCount: unreadActivitiesCount == freezed
          ? _value.unreadActivitiesCount
          : unreadActivitiesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NotificationState implements _NotificationState {
  const _$_NotificationState(
      {required this.unreadMessageCount,
      required this.inboxUnreadMessageCount,
      required this.unreadActivitiesCount});

  @override
  final int unreadMessageCount;
  @override
  final int inboxUnreadMessageCount;
  @override
  final int unreadActivitiesCount;

  @override
  String toString() {
    return 'NotificationState(unreadMessageCount: $unreadMessageCount, inboxUnreadMessageCount: $inboxUnreadMessageCount, unreadActivitiesCount: $unreadActivitiesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationState &&
            (identical(other.unreadMessageCount, unreadMessageCount) ||
                const DeepCollectionEquality()
                    .equals(other.unreadMessageCount, unreadMessageCount)) &&
            (identical(
                    other.inboxUnreadMessageCount, inboxUnreadMessageCount) ||
                const DeepCollectionEquality().equals(
                    other.inboxUnreadMessageCount, inboxUnreadMessageCount)) &&
            (identical(other.unreadActivitiesCount, unreadActivitiesCount) ||
                const DeepCollectionEquality().equals(
                    other.unreadActivitiesCount, unreadActivitiesCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(unreadMessageCount) ^
      const DeepCollectionEquality().hash(inboxUnreadMessageCount) ^
      const DeepCollectionEquality().hash(unreadActivitiesCount);

  @JsonKey(ignore: true)
  @override
  _$NotificationStateCopyWith<_NotificationState> get copyWith =>
      __$NotificationStateCopyWithImpl<_NotificationState>(this, _$identity);
}

abstract class _NotificationState implements NotificationState {
  const factory _NotificationState(
      {required int unreadMessageCount,
      required int inboxUnreadMessageCount,
      required int unreadActivitiesCount}) = _$_NotificationState;

  @override
  int get unreadMessageCount => throw _privateConstructorUsedError;
  @override
  int get inboxUnreadMessageCount => throw _privateConstructorUsedError;
  @override
  int get unreadActivitiesCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NotificationStateCopyWith<_NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
