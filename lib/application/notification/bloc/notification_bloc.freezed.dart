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

  BadgesChanged badgesChanged(BadgeIndicators notifications) {
    return BadgesChanged(
      notifications,
    );
  }

  MessageRead messageRead(String id) {
    return MessageRead(
      id,
    );
  }

  ActivityRead activityRead(String id) {
    return ActivityRead(
      id,
    );
  }

  InboxMessageRead inboxMessageRead(String id) {
    return InboxMessageRead(
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
    required TResult Function(BadgeIndicators notifications) badgesChanged,
    required TResult Function(String id) messageRead,
    required TResult Function(String id) activityRead,
    required TResult Function(String id) inboxMessageRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BadgeIndicators notifications)? badgesChanged,
    TResult Function(String id)? messageRead,
    TResult Function(String id)? activityRead,
    TResult Function(String id)? inboxMessageRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadgesChanged value) badgesChanged,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(ActivityRead value) activityRead,
    required TResult Function(InboxMessageRead value) inboxMessageRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadgesChanged value)? badgesChanged,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(ActivityRead value)? activityRead,
    TResult Function(InboxMessageRead value)? inboxMessageRead,
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
abstract class $BadgesChangedCopyWith<$Res> {
  factory $BadgesChangedCopyWith(
          BadgesChanged value, $Res Function(BadgesChanged) then) =
      _$BadgesChangedCopyWithImpl<$Res>;
  $Res call({BadgeIndicators notifications});
}

/// @nodoc
class _$BadgesChangedCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements $BadgesChangedCopyWith<$Res> {
  _$BadgesChangedCopyWithImpl(
      BadgesChanged _value, $Res Function(BadgesChanged) _then)
      : super(_value, (v) => _then(v as BadgesChanged));

  @override
  BadgesChanged get _value => super._value as BadgesChanged;

  @override
  $Res call({
    Object? notifications = freezed,
  }) {
    return _then(BadgesChanged(
      notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as BadgeIndicators,
    ));
  }
}

/// @nodoc

class _$BadgesChanged implements BadgesChanged {
  const _$BadgesChanged(this.notifications);

  @override
  final BadgeIndicators notifications;

  @override
  String toString() {
    return 'NotificationEvent.badgesChanged(notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BadgesChanged &&
            (identical(other.notifications, notifications) ||
                const DeepCollectionEquality()
                    .equals(other.notifications, notifications)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(notifications);

  @JsonKey(ignore: true)
  @override
  $BadgesChangedCopyWith<BadgesChanged> get copyWith =>
      _$BadgesChangedCopyWithImpl<BadgesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BadgeIndicators notifications) badgesChanged,
    required TResult Function(String id) messageRead,
    required TResult Function(String id) activityRead,
    required TResult Function(String id) inboxMessageRead,
  }) {
    return badgesChanged(notifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BadgeIndicators notifications)? badgesChanged,
    TResult Function(String id)? messageRead,
    TResult Function(String id)? activityRead,
    TResult Function(String id)? inboxMessageRead,
    required TResult orElse(),
  }) {
    if (badgesChanged != null) {
      return badgesChanged(notifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadgesChanged value) badgesChanged,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(ActivityRead value) activityRead,
    required TResult Function(InboxMessageRead value) inboxMessageRead,
  }) {
    return badgesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadgesChanged value)? badgesChanged,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(ActivityRead value)? activityRead,
    TResult Function(InboxMessageRead value)? inboxMessageRead,
    required TResult orElse(),
  }) {
    if (badgesChanged != null) {
      return badgesChanged(this);
    }
    return orElse();
  }
}

abstract class BadgesChanged implements NotificationEvent {
  const factory BadgesChanged(BadgeIndicators notifications) = _$BadgesChanged;

  BadgeIndicators get notifications => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BadgesChangedCopyWith<BadgesChanged> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$NotificationEventCopyWithImpl<$Res>
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
    return 'NotificationEvent.messageRead(id: $id)';
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
    required TResult Function(BadgeIndicators notifications) badgesChanged,
    required TResult Function(String id) messageRead,
    required TResult Function(String id) activityRead,
    required TResult Function(String id) inboxMessageRead,
  }) {
    return messageRead(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BadgeIndicators notifications)? badgesChanged,
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
    required TResult Function(BadgesChanged value) badgesChanged,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(ActivityRead value) activityRead,
    required TResult Function(InboxMessageRead value) inboxMessageRead,
  }) {
    return messageRead(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadgesChanged value)? badgesChanged,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(ActivityRead value)? activityRead,
    TResult Function(InboxMessageRead value)? inboxMessageRead,
    required TResult orElse(),
  }) {
    if (messageRead != null) {
      return messageRead(this);
    }
    return orElse();
  }
}

abstract class MessageRead implements NotificationEvent {
  const factory MessageRead(String id) = _$MessageRead;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageReadCopyWith<MessageRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityReadCopyWith<$Res> {
  factory $ActivityReadCopyWith(
          ActivityRead value, $Res Function(ActivityRead) then) =
      _$ActivityReadCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$ActivityReadCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements $ActivityReadCopyWith<$Res> {
  _$ActivityReadCopyWithImpl(
      ActivityRead _value, $Res Function(ActivityRead) _then)
      : super(_value, (v) => _then(v as ActivityRead));

  @override
  ActivityRead get _value => super._value as ActivityRead;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(ActivityRead(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ActivityRead implements ActivityRead {
  const _$ActivityRead(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'NotificationEvent.activityRead(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ActivityRead &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $ActivityReadCopyWith<ActivityRead> get copyWith =>
      _$ActivityReadCopyWithImpl<ActivityRead>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BadgeIndicators notifications) badgesChanged,
    required TResult Function(String id) messageRead,
    required TResult Function(String id) activityRead,
    required TResult Function(String id) inboxMessageRead,
  }) {
    return activityRead(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BadgeIndicators notifications)? badgesChanged,
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
    required TResult Function(BadgesChanged value) badgesChanged,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(ActivityRead value) activityRead,
    required TResult Function(InboxMessageRead value) inboxMessageRead,
  }) {
    return activityRead(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadgesChanged value)? badgesChanged,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(ActivityRead value)? activityRead,
    TResult Function(InboxMessageRead value)? inboxMessageRead,
    required TResult orElse(),
  }) {
    if (activityRead != null) {
      return activityRead(this);
    }
    return orElse();
  }
}

abstract class ActivityRead implements NotificationEvent {
  const factory ActivityRead(String id) = _$ActivityRead;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityReadCopyWith<ActivityRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxMessageReadCopyWith<$Res> {
  factory $InboxMessageReadCopyWith(
          InboxMessageRead value, $Res Function(InboxMessageRead) then) =
      _$InboxMessageReadCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$InboxMessageReadCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements $InboxMessageReadCopyWith<$Res> {
  _$InboxMessageReadCopyWithImpl(
      InboxMessageRead _value, $Res Function(InboxMessageRead) _then)
      : super(_value, (v) => _then(v as InboxMessageRead));

  @override
  InboxMessageRead get _value => super._value as InboxMessageRead;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(InboxMessageRead(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InboxMessageRead implements InboxMessageRead {
  const _$InboxMessageRead(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'NotificationEvent.inboxMessageRead(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InboxMessageRead &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $InboxMessageReadCopyWith<InboxMessageRead> get copyWith =>
      _$InboxMessageReadCopyWithImpl<InboxMessageRead>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BadgeIndicators notifications) badgesChanged,
    required TResult Function(String id) messageRead,
    required TResult Function(String id) activityRead,
    required TResult Function(String id) inboxMessageRead,
  }) {
    return inboxMessageRead(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BadgeIndicators notifications)? badgesChanged,
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
    required TResult Function(BadgesChanged value) badgesChanged,
    required TResult Function(MessageRead value) messageRead,
    required TResult Function(ActivityRead value) activityRead,
    required TResult Function(InboxMessageRead value) inboxMessageRead,
  }) {
    return inboxMessageRead(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadgesChanged value)? badgesChanged,
    TResult Function(MessageRead value)? messageRead,
    TResult Function(ActivityRead value)? activityRead,
    TResult Function(InboxMessageRead value)? inboxMessageRead,
    required TResult orElse(),
  }) {
    if (inboxMessageRead != null) {
      return inboxMessageRead(this);
    }
    return orElse();
  }
}

abstract class InboxMessageRead implements NotificationEvent {
  const factory InboxMessageRead(String id) = _$InboxMessageRead;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InboxMessageReadCopyWith<InboxMessageRead> get copyWith =>
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
