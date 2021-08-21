// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subreddit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SubredditEventTearOff {
  const _$SubredditEventTearOff();

  _CardDisplayChanged cardDisplayChanged(PostDisplayType displayType) {
    return _CardDisplayChanged(
      displayType,
    );
  }

  _FeedFetchingStarted feedFetchingStarted() {
    return const _FeedFetchingStarted();
  }

  _SubredditInfoFetchingStarted subredditInfoFetchingStarted() {
    return const _SubredditInfoFetchingStarted();
  }

  _SubredditInfoLoaded subredditInfoLoaded(SubredditInfo info) {
    return _SubredditInfoLoaded(
      info,
    );
  }

  _PostsLoaded postsLoaded(List<PostEntry> posts) {
    return _PostsLoaded(
      posts,
    );
  }

  _Failed failed(ValueFailure<String> failure) {
    return _Failed(
      failure,
    );
  }
}

/// @nodoc
const $SubredditEvent = _$SubredditEventTearOff();

/// @nodoc
mixin _$SubredditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostDisplayType displayType) cardDisplayChanged,
    required TResult Function() feedFetchingStarted,
    required TResult Function() subredditInfoFetchingStarted,
    required TResult Function(SubredditInfo info) subredditInfoLoaded,
    required TResult Function(List<PostEntry> posts) postsLoaded,
    required TResult Function(ValueFailure<String> failure) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostDisplayType displayType)? cardDisplayChanged,
    TResult Function()? feedFetchingStarted,
    TResult Function()? subredditInfoFetchingStarted,
    TResult Function(SubredditInfo info)? subredditInfoLoaded,
    TResult Function(List<PostEntry> posts)? postsLoaded,
    TResult Function(ValueFailure<String> failure)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CardDisplayChanged value) cardDisplayChanged,
    required TResult Function(_FeedFetchingStarted value) feedFetchingStarted,
    required TResult Function(_SubredditInfoFetchingStarted value)
        subredditInfoFetchingStarted,
    required TResult Function(_SubredditInfoLoaded value) subredditInfoLoaded,
    required TResult Function(_PostsLoaded value) postsLoaded,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CardDisplayChanged value)? cardDisplayChanged,
    TResult Function(_FeedFetchingStarted value)? feedFetchingStarted,
    TResult Function(_SubredditInfoFetchingStarted value)?
        subredditInfoFetchingStarted,
    TResult Function(_SubredditInfoLoaded value)? subredditInfoLoaded,
    TResult Function(_PostsLoaded value)? postsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubredditEventCopyWith<$Res> {
  factory $SubredditEventCopyWith(
          SubredditEvent value, $Res Function(SubredditEvent) then) =
      _$SubredditEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubredditEventCopyWithImpl<$Res>
    implements $SubredditEventCopyWith<$Res> {
  _$SubredditEventCopyWithImpl(this._value, this._then);

  final SubredditEvent _value;
  // ignore: unused_field
  final $Res Function(SubredditEvent) _then;
}

/// @nodoc
abstract class _$CardDisplayChangedCopyWith<$Res> {
  factory _$CardDisplayChangedCopyWith(
          _CardDisplayChanged value, $Res Function(_CardDisplayChanged) then) =
      __$CardDisplayChangedCopyWithImpl<$Res>;
  $Res call({PostDisplayType displayType});
}

/// @nodoc
class __$CardDisplayChangedCopyWithImpl<$Res>
    extends _$SubredditEventCopyWithImpl<$Res>
    implements _$CardDisplayChangedCopyWith<$Res> {
  __$CardDisplayChangedCopyWithImpl(
      _CardDisplayChanged _value, $Res Function(_CardDisplayChanged) _then)
      : super(_value, (v) => _then(v as _CardDisplayChanged));

  @override
  _CardDisplayChanged get _value => super._value as _CardDisplayChanged;

  @override
  $Res call({
    Object? displayType = freezed,
  }) {
    return _then(_CardDisplayChanged(
      displayType == freezed
          ? _value.displayType
          : displayType // ignore: cast_nullable_to_non_nullable
              as PostDisplayType,
    ));
  }
}

/// @nodoc

class _$_CardDisplayChanged implements _CardDisplayChanged {
  const _$_CardDisplayChanged(this.displayType);

  @override
  final PostDisplayType displayType;

  @override
  String toString() {
    return 'SubredditEvent.cardDisplayChanged(displayType: $displayType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CardDisplayChanged &&
            (identical(other.displayType, displayType) ||
                const DeepCollectionEquality()
                    .equals(other.displayType, displayType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(displayType);

  @JsonKey(ignore: true)
  @override
  _$CardDisplayChangedCopyWith<_CardDisplayChanged> get copyWith =>
      __$CardDisplayChangedCopyWithImpl<_CardDisplayChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostDisplayType displayType) cardDisplayChanged,
    required TResult Function() feedFetchingStarted,
    required TResult Function() subredditInfoFetchingStarted,
    required TResult Function(SubredditInfo info) subredditInfoLoaded,
    required TResult Function(List<PostEntry> posts) postsLoaded,
    required TResult Function(ValueFailure<String> failure) failed,
  }) {
    return cardDisplayChanged(displayType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostDisplayType displayType)? cardDisplayChanged,
    TResult Function()? feedFetchingStarted,
    TResult Function()? subredditInfoFetchingStarted,
    TResult Function(SubredditInfo info)? subredditInfoLoaded,
    TResult Function(List<PostEntry> posts)? postsLoaded,
    TResult Function(ValueFailure<String> failure)? failed,
    required TResult orElse(),
  }) {
    if (cardDisplayChanged != null) {
      return cardDisplayChanged(displayType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CardDisplayChanged value) cardDisplayChanged,
    required TResult Function(_FeedFetchingStarted value) feedFetchingStarted,
    required TResult Function(_SubredditInfoFetchingStarted value)
        subredditInfoFetchingStarted,
    required TResult Function(_SubredditInfoLoaded value) subredditInfoLoaded,
    required TResult Function(_PostsLoaded value) postsLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return cardDisplayChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CardDisplayChanged value)? cardDisplayChanged,
    TResult Function(_FeedFetchingStarted value)? feedFetchingStarted,
    TResult Function(_SubredditInfoFetchingStarted value)?
        subredditInfoFetchingStarted,
    TResult Function(_SubredditInfoLoaded value)? subredditInfoLoaded,
    TResult Function(_PostsLoaded value)? postsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (cardDisplayChanged != null) {
      return cardDisplayChanged(this);
    }
    return orElse();
  }
}

abstract class _CardDisplayChanged implements SubredditEvent {
  const factory _CardDisplayChanged(PostDisplayType displayType) =
      _$_CardDisplayChanged;

  PostDisplayType get displayType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CardDisplayChangedCopyWith<_CardDisplayChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FeedFetchingStartedCopyWith<$Res> {
  factory _$FeedFetchingStartedCopyWith(_FeedFetchingStarted value,
          $Res Function(_FeedFetchingStarted) then) =
      __$FeedFetchingStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FeedFetchingStartedCopyWithImpl<$Res>
    extends _$SubredditEventCopyWithImpl<$Res>
    implements _$FeedFetchingStartedCopyWith<$Res> {
  __$FeedFetchingStartedCopyWithImpl(
      _FeedFetchingStarted _value, $Res Function(_FeedFetchingStarted) _then)
      : super(_value, (v) => _then(v as _FeedFetchingStarted));

  @override
  _FeedFetchingStarted get _value => super._value as _FeedFetchingStarted;
}

/// @nodoc

class _$_FeedFetchingStarted implements _FeedFetchingStarted {
  const _$_FeedFetchingStarted();

  @override
  String toString() {
    return 'SubredditEvent.feedFetchingStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FeedFetchingStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostDisplayType displayType) cardDisplayChanged,
    required TResult Function() feedFetchingStarted,
    required TResult Function() subredditInfoFetchingStarted,
    required TResult Function(SubredditInfo info) subredditInfoLoaded,
    required TResult Function(List<PostEntry> posts) postsLoaded,
    required TResult Function(ValueFailure<String> failure) failed,
  }) {
    return feedFetchingStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostDisplayType displayType)? cardDisplayChanged,
    TResult Function()? feedFetchingStarted,
    TResult Function()? subredditInfoFetchingStarted,
    TResult Function(SubredditInfo info)? subredditInfoLoaded,
    TResult Function(List<PostEntry> posts)? postsLoaded,
    TResult Function(ValueFailure<String> failure)? failed,
    required TResult orElse(),
  }) {
    if (feedFetchingStarted != null) {
      return feedFetchingStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CardDisplayChanged value) cardDisplayChanged,
    required TResult Function(_FeedFetchingStarted value) feedFetchingStarted,
    required TResult Function(_SubredditInfoFetchingStarted value)
        subredditInfoFetchingStarted,
    required TResult Function(_SubredditInfoLoaded value) subredditInfoLoaded,
    required TResult Function(_PostsLoaded value) postsLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return feedFetchingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CardDisplayChanged value)? cardDisplayChanged,
    TResult Function(_FeedFetchingStarted value)? feedFetchingStarted,
    TResult Function(_SubredditInfoFetchingStarted value)?
        subredditInfoFetchingStarted,
    TResult Function(_SubredditInfoLoaded value)? subredditInfoLoaded,
    TResult Function(_PostsLoaded value)? postsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (feedFetchingStarted != null) {
      return feedFetchingStarted(this);
    }
    return orElse();
  }
}

abstract class _FeedFetchingStarted implements SubredditEvent {
  const factory _FeedFetchingStarted() = _$_FeedFetchingStarted;
}

/// @nodoc
abstract class _$SubredditInfoFetchingStartedCopyWith<$Res> {
  factory _$SubredditInfoFetchingStartedCopyWith(
          _SubredditInfoFetchingStarted value,
          $Res Function(_SubredditInfoFetchingStarted) then) =
      __$SubredditInfoFetchingStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubredditInfoFetchingStartedCopyWithImpl<$Res>
    extends _$SubredditEventCopyWithImpl<$Res>
    implements _$SubredditInfoFetchingStartedCopyWith<$Res> {
  __$SubredditInfoFetchingStartedCopyWithImpl(
      _SubredditInfoFetchingStarted _value,
      $Res Function(_SubredditInfoFetchingStarted) _then)
      : super(_value, (v) => _then(v as _SubredditInfoFetchingStarted));

  @override
  _SubredditInfoFetchingStarted get _value =>
      super._value as _SubredditInfoFetchingStarted;
}

/// @nodoc

class _$_SubredditInfoFetchingStarted implements _SubredditInfoFetchingStarted {
  const _$_SubredditInfoFetchingStarted();

  @override
  String toString() {
    return 'SubredditEvent.subredditInfoFetchingStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SubredditInfoFetchingStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostDisplayType displayType) cardDisplayChanged,
    required TResult Function() feedFetchingStarted,
    required TResult Function() subredditInfoFetchingStarted,
    required TResult Function(SubredditInfo info) subredditInfoLoaded,
    required TResult Function(List<PostEntry> posts) postsLoaded,
    required TResult Function(ValueFailure<String> failure) failed,
  }) {
    return subredditInfoFetchingStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostDisplayType displayType)? cardDisplayChanged,
    TResult Function()? feedFetchingStarted,
    TResult Function()? subredditInfoFetchingStarted,
    TResult Function(SubredditInfo info)? subredditInfoLoaded,
    TResult Function(List<PostEntry> posts)? postsLoaded,
    TResult Function(ValueFailure<String> failure)? failed,
    required TResult orElse(),
  }) {
    if (subredditInfoFetchingStarted != null) {
      return subredditInfoFetchingStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CardDisplayChanged value) cardDisplayChanged,
    required TResult Function(_FeedFetchingStarted value) feedFetchingStarted,
    required TResult Function(_SubredditInfoFetchingStarted value)
        subredditInfoFetchingStarted,
    required TResult Function(_SubredditInfoLoaded value) subredditInfoLoaded,
    required TResult Function(_PostsLoaded value) postsLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return subredditInfoFetchingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CardDisplayChanged value)? cardDisplayChanged,
    TResult Function(_FeedFetchingStarted value)? feedFetchingStarted,
    TResult Function(_SubredditInfoFetchingStarted value)?
        subredditInfoFetchingStarted,
    TResult Function(_SubredditInfoLoaded value)? subredditInfoLoaded,
    TResult Function(_PostsLoaded value)? postsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (subredditInfoFetchingStarted != null) {
      return subredditInfoFetchingStarted(this);
    }
    return orElse();
  }
}

abstract class _SubredditInfoFetchingStarted implements SubredditEvent {
  const factory _SubredditInfoFetchingStarted() =
      _$_SubredditInfoFetchingStarted;
}

/// @nodoc
abstract class _$SubredditInfoLoadedCopyWith<$Res> {
  factory _$SubredditInfoLoadedCopyWith(_SubredditInfoLoaded value,
          $Res Function(_SubredditInfoLoaded) then) =
      __$SubredditInfoLoadedCopyWithImpl<$Res>;
  $Res call({SubredditInfo info});
}

/// @nodoc
class __$SubredditInfoLoadedCopyWithImpl<$Res>
    extends _$SubredditEventCopyWithImpl<$Res>
    implements _$SubredditInfoLoadedCopyWith<$Res> {
  __$SubredditInfoLoadedCopyWithImpl(
      _SubredditInfoLoaded _value, $Res Function(_SubredditInfoLoaded) _then)
      : super(_value, (v) => _then(v as _SubredditInfoLoaded));

  @override
  _SubredditInfoLoaded get _value => super._value as _SubredditInfoLoaded;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(_SubredditInfoLoaded(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as SubredditInfo,
    ));
  }
}

/// @nodoc

class _$_SubredditInfoLoaded implements _SubredditInfoLoaded {
  const _$_SubredditInfoLoaded(this.info);

  @override
  final SubredditInfo info;

  @override
  String toString() {
    return 'SubredditEvent.subredditInfoLoaded(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubredditInfoLoaded &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  _$SubredditInfoLoadedCopyWith<_SubredditInfoLoaded> get copyWith =>
      __$SubredditInfoLoadedCopyWithImpl<_SubredditInfoLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostDisplayType displayType) cardDisplayChanged,
    required TResult Function() feedFetchingStarted,
    required TResult Function() subredditInfoFetchingStarted,
    required TResult Function(SubredditInfo info) subredditInfoLoaded,
    required TResult Function(List<PostEntry> posts) postsLoaded,
    required TResult Function(ValueFailure<String> failure) failed,
  }) {
    return subredditInfoLoaded(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostDisplayType displayType)? cardDisplayChanged,
    TResult Function()? feedFetchingStarted,
    TResult Function()? subredditInfoFetchingStarted,
    TResult Function(SubredditInfo info)? subredditInfoLoaded,
    TResult Function(List<PostEntry> posts)? postsLoaded,
    TResult Function(ValueFailure<String> failure)? failed,
    required TResult orElse(),
  }) {
    if (subredditInfoLoaded != null) {
      return subredditInfoLoaded(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CardDisplayChanged value) cardDisplayChanged,
    required TResult Function(_FeedFetchingStarted value) feedFetchingStarted,
    required TResult Function(_SubredditInfoFetchingStarted value)
        subredditInfoFetchingStarted,
    required TResult Function(_SubredditInfoLoaded value) subredditInfoLoaded,
    required TResult Function(_PostsLoaded value) postsLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return subredditInfoLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CardDisplayChanged value)? cardDisplayChanged,
    TResult Function(_FeedFetchingStarted value)? feedFetchingStarted,
    TResult Function(_SubredditInfoFetchingStarted value)?
        subredditInfoFetchingStarted,
    TResult Function(_SubredditInfoLoaded value)? subredditInfoLoaded,
    TResult Function(_PostsLoaded value)? postsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (subredditInfoLoaded != null) {
      return subredditInfoLoaded(this);
    }
    return orElse();
  }
}

abstract class _SubredditInfoLoaded implements SubredditEvent {
  const factory _SubredditInfoLoaded(SubredditInfo info) =
      _$_SubredditInfoLoaded;

  SubredditInfo get info => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SubredditInfoLoadedCopyWith<_SubredditInfoLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PostsLoadedCopyWith<$Res> {
  factory _$PostsLoadedCopyWith(
          _PostsLoaded value, $Res Function(_PostsLoaded) then) =
      __$PostsLoadedCopyWithImpl<$Res>;
  $Res call({List<PostEntry> posts});
}

/// @nodoc
class __$PostsLoadedCopyWithImpl<$Res>
    extends _$SubredditEventCopyWithImpl<$Res>
    implements _$PostsLoadedCopyWith<$Res> {
  __$PostsLoadedCopyWithImpl(
      _PostsLoaded _value, $Res Function(_PostsLoaded) _then)
      : super(_value, (v) => _then(v as _PostsLoaded));

  @override
  _PostsLoaded get _value => super._value as _PostsLoaded;

  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(_PostsLoaded(
      posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostEntry>,
    ));
  }
}

/// @nodoc

class _$_PostsLoaded implements _PostsLoaded {
  const _$_PostsLoaded(this.posts);

  @override
  final List<PostEntry> posts;

  @override
  String toString() {
    return 'SubredditEvent.postsLoaded(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostsLoaded &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(posts);

  @JsonKey(ignore: true)
  @override
  _$PostsLoadedCopyWith<_PostsLoaded> get copyWith =>
      __$PostsLoadedCopyWithImpl<_PostsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostDisplayType displayType) cardDisplayChanged,
    required TResult Function() feedFetchingStarted,
    required TResult Function() subredditInfoFetchingStarted,
    required TResult Function(SubredditInfo info) subredditInfoLoaded,
    required TResult Function(List<PostEntry> posts) postsLoaded,
    required TResult Function(ValueFailure<String> failure) failed,
  }) {
    return postsLoaded(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostDisplayType displayType)? cardDisplayChanged,
    TResult Function()? feedFetchingStarted,
    TResult Function()? subredditInfoFetchingStarted,
    TResult Function(SubredditInfo info)? subredditInfoLoaded,
    TResult Function(List<PostEntry> posts)? postsLoaded,
    TResult Function(ValueFailure<String> failure)? failed,
    required TResult orElse(),
  }) {
    if (postsLoaded != null) {
      return postsLoaded(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CardDisplayChanged value) cardDisplayChanged,
    required TResult Function(_FeedFetchingStarted value) feedFetchingStarted,
    required TResult Function(_SubredditInfoFetchingStarted value)
        subredditInfoFetchingStarted,
    required TResult Function(_SubredditInfoLoaded value) subredditInfoLoaded,
    required TResult Function(_PostsLoaded value) postsLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return postsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CardDisplayChanged value)? cardDisplayChanged,
    TResult Function(_FeedFetchingStarted value)? feedFetchingStarted,
    TResult Function(_SubredditInfoFetchingStarted value)?
        subredditInfoFetchingStarted,
    TResult Function(_SubredditInfoLoaded value)? subredditInfoLoaded,
    TResult Function(_PostsLoaded value)? postsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (postsLoaded != null) {
      return postsLoaded(this);
    }
    return orElse();
  }
}

abstract class _PostsLoaded implements SubredditEvent {
  const factory _PostsLoaded(List<PostEntry> posts) = _$_PostsLoaded;

  List<PostEntry> get posts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PostsLoadedCopyWith<_PostsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({ValueFailure<String> failure});

  $ValueFailureCopyWith<String, $Res> get failure;
}

/// @nodoc
class __$FailedCopyWithImpl<$Res> extends _$SubredditEventCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Failed(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ValueFailure<String>,
    ));
  }

  @override
  $ValueFailureCopyWith<String, $Res> get failure {
    return $ValueFailureCopyWith<String, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed(this.failure);

  @override
  final ValueFailure<String> failure;

  @override
  String toString() {
    return 'SubredditEvent.failed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failed &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$FailedCopyWith<_Failed> get copyWith =>
      __$FailedCopyWithImpl<_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostDisplayType displayType) cardDisplayChanged,
    required TResult Function() feedFetchingStarted,
    required TResult Function() subredditInfoFetchingStarted,
    required TResult Function(SubredditInfo info) subredditInfoLoaded,
    required TResult Function(List<PostEntry> posts) postsLoaded,
    required TResult Function(ValueFailure<String> failure) failed,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostDisplayType displayType)? cardDisplayChanged,
    TResult Function()? feedFetchingStarted,
    TResult Function()? subredditInfoFetchingStarted,
    TResult Function(SubredditInfo info)? subredditInfoLoaded,
    TResult Function(List<PostEntry> posts)? postsLoaded,
    TResult Function(ValueFailure<String> failure)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CardDisplayChanged value) cardDisplayChanged,
    required TResult Function(_FeedFetchingStarted value) feedFetchingStarted,
    required TResult Function(_SubredditInfoFetchingStarted value)
        subredditInfoFetchingStarted,
    required TResult Function(_SubredditInfoLoaded value) subredditInfoLoaded,
    required TResult Function(_PostsLoaded value) postsLoaded,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CardDisplayChanged value)? cardDisplayChanged,
    TResult Function(_FeedFetchingStarted value)? feedFetchingStarted,
    TResult Function(_SubredditInfoFetchingStarted value)?
        subredditInfoFetchingStarted,
    TResult Function(_SubredditInfoLoaded value)? subredditInfoLoaded,
    TResult Function(_PostsLoaded value)? postsLoaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements SubredditEvent {
  const factory _Failed(ValueFailure<String> failure) = _$_Failed;

  ValueFailure<String> get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailedCopyWith<_Failed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SubredditStateTearOff {
  const _$SubredditStateTearOff();

  _SubredditState call(
      {required Option<SubredditInfo> subredditInfo,
      required Option<List<PostEntry>> posts,
      required Option<ValueFailure<String>> failure,
      required bool subredditInfoLoading,
      required bool postsLoading,
      required PostDisplayType displayType}) {
    return _SubredditState(
      subredditInfo: subredditInfo,
      posts: posts,
      failure: failure,
      subredditInfoLoading: subredditInfoLoading,
      postsLoading: postsLoading,
      displayType: displayType,
    );
  }
}

/// @nodoc
const $SubredditState = _$SubredditStateTearOff();

/// @nodoc
mixin _$SubredditState {
  Option<SubredditInfo> get subredditInfo => throw _privateConstructorUsedError;
  Option<List<PostEntry>> get posts => throw _privateConstructorUsedError;
  Option<ValueFailure<String>> get failure =>
      throw _privateConstructorUsedError;
  bool get subredditInfoLoading => throw _privateConstructorUsedError;
  bool get postsLoading => throw _privateConstructorUsedError;
  PostDisplayType get displayType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubredditStateCopyWith<SubredditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubredditStateCopyWith<$Res> {
  factory $SubredditStateCopyWith(
          SubredditState value, $Res Function(SubredditState) then) =
      _$SubredditStateCopyWithImpl<$Res>;
  $Res call(
      {Option<SubredditInfo> subredditInfo,
      Option<List<PostEntry>> posts,
      Option<ValueFailure<String>> failure,
      bool subredditInfoLoading,
      bool postsLoading,
      PostDisplayType displayType});
}

/// @nodoc
class _$SubredditStateCopyWithImpl<$Res>
    implements $SubredditStateCopyWith<$Res> {
  _$SubredditStateCopyWithImpl(this._value, this._then);

  final SubredditState _value;
  // ignore: unused_field
  final $Res Function(SubredditState) _then;

  @override
  $Res call({
    Object? subredditInfo = freezed,
    Object? posts = freezed,
    Object? failure = freezed,
    Object? subredditInfoLoading = freezed,
    Object? postsLoading = freezed,
    Object? displayType = freezed,
  }) {
    return _then(_value.copyWith(
      subredditInfo: subredditInfo == freezed
          ? _value.subredditInfo
          : subredditInfo // ignore: cast_nullable_to_non_nullable
              as Option<SubredditInfo>,
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as Option<List<PostEntry>>,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure<String>>,
      subredditInfoLoading: subredditInfoLoading == freezed
          ? _value.subredditInfoLoading
          : subredditInfoLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      postsLoading: postsLoading == freezed
          ? _value.postsLoading
          : postsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      displayType: displayType == freezed
          ? _value.displayType
          : displayType // ignore: cast_nullable_to_non_nullable
              as PostDisplayType,
    ));
  }
}

/// @nodoc
abstract class _$SubredditStateCopyWith<$Res>
    implements $SubredditStateCopyWith<$Res> {
  factory _$SubredditStateCopyWith(
          _SubredditState value, $Res Function(_SubredditState) then) =
      __$SubredditStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<SubredditInfo> subredditInfo,
      Option<List<PostEntry>> posts,
      Option<ValueFailure<String>> failure,
      bool subredditInfoLoading,
      bool postsLoading,
      PostDisplayType displayType});
}

/// @nodoc
class __$SubredditStateCopyWithImpl<$Res>
    extends _$SubredditStateCopyWithImpl<$Res>
    implements _$SubredditStateCopyWith<$Res> {
  __$SubredditStateCopyWithImpl(
      _SubredditState _value, $Res Function(_SubredditState) _then)
      : super(_value, (v) => _then(v as _SubredditState));

  @override
  _SubredditState get _value => super._value as _SubredditState;

  @override
  $Res call({
    Object? subredditInfo = freezed,
    Object? posts = freezed,
    Object? failure = freezed,
    Object? subredditInfoLoading = freezed,
    Object? postsLoading = freezed,
    Object? displayType = freezed,
  }) {
    return _then(_SubredditState(
      subredditInfo: subredditInfo == freezed
          ? _value.subredditInfo
          : subredditInfo // ignore: cast_nullable_to_non_nullable
              as Option<SubredditInfo>,
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as Option<List<PostEntry>>,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure<String>>,
      subredditInfoLoading: subredditInfoLoading == freezed
          ? _value.subredditInfoLoading
          : subredditInfoLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      postsLoading: postsLoading == freezed
          ? _value.postsLoading
          : postsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      displayType: displayType == freezed
          ? _value.displayType
          : displayType // ignore: cast_nullable_to_non_nullable
              as PostDisplayType,
    ));
  }
}

/// @nodoc

class _$_SubredditState implements _SubredditState {
  const _$_SubredditState(
      {required this.subredditInfo,
      required this.posts,
      required this.failure,
      required this.subredditInfoLoading,
      required this.postsLoading,
      required this.displayType});

  @override
  final Option<SubredditInfo> subredditInfo;
  @override
  final Option<List<PostEntry>> posts;
  @override
  final Option<ValueFailure<String>> failure;
  @override
  final bool subredditInfoLoading;
  @override
  final bool postsLoading;
  @override
  final PostDisplayType displayType;

  @override
  String toString() {
    return 'SubredditState(subredditInfo: $subredditInfo, posts: $posts, failure: $failure, subredditInfoLoading: $subredditInfoLoading, postsLoading: $postsLoading, displayType: $displayType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubredditState &&
            (identical(other.subredditInfo, subredditInfo) ||
                const DeepCollectionEquality()
                    .equals(other.subredditInfo, subredditInfo)) &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality()
                    .equals(other.failure, failure)) &&
            (identical(other.subredditInfoLoading, subredditInfoLoading) ||
                const DeepCollectionEquality().equals(
                    other.subredditInfoLoading, subredditInfoLoading)) &&
            (identical(other.postsLoading, postsLoading) ||
                const DeepCollectionEquality()
                    .equals(other.postsLoading, postsLoading)) &&
            (identical(other.displayType, displayType) ||
                const DeepCollectionEquality()
                    .equals(other.displayType, displayType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subredditInfo) ^
      const DeepCollectionEquality().hash(posts) ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(subredditInfoLoading) ^
      const DeepCollectionEquality().hash(postsLoading) ^
      const DeepCollectionEquality().hash(displayType);

  @JsonKey(ignore: true)
  @override
  _$SubredditStateCopyWith<_SubredditState> get copyWith =>
      __$SubredditStateCopyWithImpl<_SubredditState>(this, _$identity);
}

abstract class _SubredditState implements SubredditState {
  const factory _SubredditState(
      {required Option<SubredditInfo> subredditInfo,
      required Option<List<PostEntry>> posts,
      required Option<ValueFailure<String>> failure,
      required bool subredditInfoLoading,
      required bool postsLoading,
      required PostDisplayType displayType}) = _$_SubredditState;

  @override
  Option<SubredditInfo> get subredditInfo => throw _privateConstructorUsedError;
  @override
  Option<List<PostEntry>> get posts => throw _privateConstructorUsedError;
  @override
  Option<ValueFailure<String>> get failure =>
      throw _privateConstructorUsedError;
  @override
  bool get subredditInfoLoading => throw _privateConstructorUsedError;
  @override
  bool get postsLoading => throw _privateConstructorUsedError;
  @override
  PostDisplayType get displayType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubredditStateCopyWith<_SubredditState> get copyWith =>
      throw _privateConstructorUsedError;
}
