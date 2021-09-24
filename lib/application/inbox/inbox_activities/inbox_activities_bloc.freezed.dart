// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inbox_activities_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InboxActivitiesEventTearOff {
  const _$InboxActivitiesEventTearOff();

  FetchingStarted fetchingStarted() {
    return const FetchingStarted();
  }

  ActivityViewed activityViewed(String id) {
    return ActivityViewed(
      id,
    );
  }
}

/// @nodoc
const $InboxActivitiesEvent = _$InboxActivitiesEventTearOff();

/// @nodoc
mixin _$InboxActivitiesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchingStarted,
    required TResult Function(String id) activityViewed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchingStarted,
    TResult Function(String id)? activityViewed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchingStarted value) fetchingStarted,
    required TResult Function(ActivityViewed value) activityViewed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchingStarted value)? fetchingStarted,
    TResult Function(ActivityViewed value)? activityViewed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxActivitiesEventCopyWith<$Res> {
  factory $InboxActivitiesEventCopyWith(InboxActivitiesEvent value,
          $Res Function(InboxActivitiesEvent) then) =
      _$InboxActivitiesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InboxActivitiesEventCopyWithImpl<$Res>
    implements $InboxActivitiesEventCopyWith<$Res> {
  _$InboxActivitiesEventCopyWithImpl(this._value, this._then);

  final InboxActivitiesEvent _value;
  // ignore: unused_field
  final $Res Function(InboxActivitiesEvent) _then;
}

/// @nodoc
abstract class $FetchingStartedCopyWith<$Res> {
  factory $FetchingStartedCopyWith(
          FetchingStarted value, $Res Function(FetchingStarted) then) =
      _$FetchingStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchingStartedCopyWithImpl<$Res>
    extends _$InboxActivitiesEventCopyWithImpl<$Res>
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
    return 'InboxActivitiesEvent.fetchingStarted()';
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
    required TResult Function(String id) activityViewed,
  }) {
    return fetchingStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchingStarted,
    TResult Function(String id)? activityViewed,
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
    required TResult Function(ActivityViewed value) activityViewed,
  }) {
    return fetchingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchingStarted value)? fetchingStarted,
    TResult Function(ActivityViewed value)? activityViewed,
    required TResult orElse(),
  }) {
    if (fetchingStarted != null) {
      return fetchingStarted(this);
    }
    return orElse();
  }
}

abstract class FetchingStarted implements InboxActivitiesEvent {
  const factory FetchingStarted() = _$FetchingStarted;
}

/// @nodoc
abstract class $ActivityViewedCopyWith<$Res> {
  factory $ActivityViewedCopyWith(
          ActivityViewed value, $Res Function(ActivityViewed) then) =
      _$ActivityViewedCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$ActivityViewedCopyWithImpl<$Res>
    extends _$InboxActivitiesEventCopyWithImpl<$Res>
    implements $ActivityViewedCopyWith<$Res> {
  _$ActivityViewedCopyWithImpl(
      ActivityViewed _value, $Res Function(ActivityViewed) _then)
      : super(_value, (v) => _then(v as ActivityViewed));

  @override
  ActivityViewed get _value => super._value as ActivityViewed;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(ActivityViewed(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ActivityViewed implements ActivityViewed {
  const _$ActivityViewed(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'InboxActivitiesEvent.activityViewed(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ActivityViewed &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $ActivityViewedCopyWith<ActivityViewed> get copyWith =>
      _$ActivityViewedCopyWithImpl<ActivityViewed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchingStarted,
    required TResult Function(String id) activityViewed,
  }) {
    return activityViewed(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchingStarted,
    TResult Function(String id)? activityViewed,
    required TResult orElse(),
  }) {
    if (activityViewed != null) {
      return activityViewed(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchingStarted value) fetchingStarted,
    required TResult Function(ActivityViewed value) activityViewed,
  }) {
    return activityViewed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchingStarted value)? fetchingStarted,
    TResult Function(ActivityViewed value)? activityViewed,
    required TResult orElse(),
  }) {
    if (activityViewed != null) {
      return activityViewed(this);
    }
    return orElse();
  }
}

abstract class ActivityViewed implements InboxActivitiesEvent {
  const factory ActivityViewed(String id) = _$ActivityViewed;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityViewedCopyWith<ActivityViewed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$InboxActivitiesStateTearOff {
  const _$InboxActivitiesStateTearOff();

  _InboxActivitiesState call(
      {required List<Activity> activities,
      required bool loading,
      required bool failed}) {
    return _InboxActivitiesState(
      activities: activities,
      loading: loading,
      failed: failed,
    );
  }
}

/// @nodoc
const $InboxActivitiesState = _$InboxActivitiesStateTearOff();

/// @nodoc
mixin _$InboxActivitiesState {
  List<Activity> get activities => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InboxActivitiesStateCopyWith<InboxActivitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxActivitiesStateCopyWith<$Res> {
  factory $InboxActivitiesStateCopyWith(InboxActivitiesState value,
          $Res Function(InboxActivitiesState) then) =
      _$InboxActivitiesStateCopyWithImpl<$Res>;
  $Res call({List<Activity> activities, bool loading, bool failed});
}

/// @nodoc
class _$InboxActivitiesStateCopyWithImpl<$Res>
    implements $InboxActivitiesStateCopyWith<$Res> {
  _$InboxActivitiesStateCopyWithImpl(this._value, this._then);

  final InboxActivitiesState _value;
  // ignore: unused_field
  final $Res Function(InboxActivitiesState) _then;

  @override
  $Res call({
    Object? activities = freezed,
    Object? loading = freezed,
    Object? failed = freezed,
  }) {
    return _then(_value.copyWith(
      activities: activities == freezed
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
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
abstract class _$InboxActivitiesStateCopyWith<$Res>
    implements $InboxActivitiesStateCopyWith<$Res> {
  factory _$InboxActivitiesStateCopyWith(_InboxActivitiesState value,
          $Res Function(_InboxActivitiesState) then) =
      __$InboxActivitiesStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Activity> activities, bool loading, bool failed});
}

/// @nodoc
class __$InboxActivitiesStateCopyWithImpl<$Res>
    extends _$InboxActivitiesStateCopyWithImpl<$Res>
    implements _$InboxActivitiesStateCopyWith<$Res> {
  __$InboxActivitiesStateCopyWithImpl(
      _InboxActivitiesState _value, $Res Function(_InboxActivitiesState) _then)
      : super(_value, (v) => _then(v as _InboxActivitiesState));

  @override
  _InboxActivitiesState get _value => super._value as _InboxActivitiesState;

  @override
  $Res call({
    Object? activities = freezed,
    Object? loading = freezed,
    Object? failed = freezed,
  }) {
    return _then(_InboxActivitiesState(
      activities: activities == freezed
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
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

class _$_InboxActivitiesState implements _InboxActivitiesState {
  const _$_InboxActivitiesState(
      {required this.activities, required this.loading, required this.failed});

  @override
  final List<Activity> activities;
  @override
  final bool loading;
  @override
  final bool failed;

  @override
  String toString() {
    return 'InboxActivitiesState(activities: $activities, loading: $loading, failed: $failed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InboxActivitiesState &&
            (identical(other.activities, activities) ||
                const DeepCollectionEquality()
                    .equals(other.activities, activities)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.failed, failed) ||
                const DeepCollectionEquality().equals(other.failed, failed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(activities) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(failed);

  @JsonKey(ignore: true)
  @override
  _$InboxActivitiesStateCopyWith<_InboxActivitiesState> get copyWith =>
      __$InboxActivitiesStateCopyWithImpl<_InboxActivitiesState>(
          this, _$identity);
}

abstract class _InboxActivitiesState implements InboxActivitiesState {
  const factory _InboxActivitiesState(
      {required List<Activity> activities,
      required bool loading,
      required bool failed}) = _$_InboxActivitiesState;

  @override
  List<Activity> get activities => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  bool get failed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InboxActivitiesStateCopyWith<_InboxActivitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}
