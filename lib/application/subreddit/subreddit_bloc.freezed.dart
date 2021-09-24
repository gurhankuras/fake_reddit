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

  CardDisplayChanged cardDisplayChanged(PostDisplayType displayType) {
    return CardDisplayChanged(
      displayType,
    );
  }

  FeedFetchingStarted feedFetchingStarted() {
    return const FeedFetchingStarted();
  }

  SubredditInfoFetchingStarted subredditInfoFetchingStarted() {
    return const SubredditInfoFetchingStarted();
  }

  SubredditInfoLoaded subredditInfoLoaded(SubredditInfo info) {
    return SubredditInfoLoaded(
      info,
    );
  }

  PostsLoaded postsLoaded(List<PostEntry> posts) {
    return PostsLoaded(
      posts,
    );
  }

  Failed failed(ValueFailure<String> failure) {
    return Failed(
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
    required TResult Function(CardDisplayChanged value) cardDisplayChanged,
    required TResult Function(FeedFetchingStarted value) feedFetchingStarted,
    required TResult Function(SubredditInfoFetchingStarted value)
        subredditInfoFetchingStarted,
    required TResult Function(SubredditInfoLoaded value) subredditInfoLoaded,
    required TResult Function(PostsLoaded value) postsLoaded,
    required TResult Function(Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardDisplayChanged value)? cardDisplayChanged,
    TResult Function(FeedFetchingStarted value)? feedFetchingStarted,
    TResult Function(SubredditInfoFetchingStarted value)?
        subredditInfoFetchingStarted,
    TResult Function(SubredditInfoLoaded value)? subredditInfoLoaded,
    TResult Function(PostsLoaded value)? postsLoaded,
    TResult Function(Failed value)? failed,
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
abstract class $CardDisplayChangedCopyWith<$Res> {
  factory $CardDisplayChangedCopyWith(
          CardDisplayChanged value, $Res Function(CardDisplayChanged) then) =
      _$CardDisplayChangedCopyWithImpl<$Res>;
  $Res call({PostDisplayType displayType});
}

/// @nodoc
class _$CardDisplayChangedCopyWithImpl<$Res>
    extends _$SubredditEventCopyWithImpl<$Res>
    implements $CardDisplayChangedCopyWith<$Res> {
  _$CardDisplayChangedCopyWithImpl(
      CardDisplayChanged _value, $Res Function(CardDisplayChanged) _then)
      : super(_value, (v) => _then(v as CardDisplayChanged));

  @override
  CardDisplayChanged get _value => super._value as CardDisplayChanged;

  @override
  $Res call({
    Object? displayType = freezed,
  }) {
    return _then(CardDisplayChanged(
      displayType == freezed
          ? _value.displayType
          : displayType // ignore: cast_nullable_to_non_nullable
              as PostDisplayType,
    ));
  }
}

/// @nodoc

class _$CardDisplayChanged implements CardDisplayChanged {
  const _$CardDisplayChanged(this.displayType);

  @override
  final PostDisplayType displayType;

  @override
  String toString() {
    return 'SubredditEvent.cardDisplayChanged(displayType: $displayType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CardDisplayChanged &&
            (identical(other.displayType, displayType) ||
                const DeepCollectionEquality()
                    .equals(other.displayType, displayType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(displayType);

  @JsonKey(ignore: true)
  @override
  $CardDisplayChangedCopyWith<CardDisplayChanged> get copyWith =>
      _$CardDisplayChangedCopyWithImpl<CardDisplayChanged>(this, _$identity);

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
    required TResult Function(CardDisplayChanged value) cardDisplayChanged,
    required TResult Function(FeedFetchingStarted value) feedFetchingStarted,
    required TResult Function(SubredditInfoFetchingStarted value)
        subredditInfoFetchingStarted,
    required TResult Function(SubredditInfoLoaded value) subredditInfoLoaded,
    required TResult Function(PostsLoaded value) postsLoaded,
    required TResult Function(Failed value) failed,
  }) {
    return cardDisplayChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardDisplayChanged value)? cardDisplayChanged,
    TResult Function(FeedFetchingStarted value)? feedFetchingStarted,
    TResult Function(SubredditInfoFetchingStarted value)?
        subredditInfoFetchingStarted,
    TResult Function(SubredditInfoLoaded value)? subredditInfoLoaded,
    TResult Function(PostsLoaded value)? postsLoaded,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (cardDisplayChanged != null) {
      return cardDisplayChanged(this);
    }
    return orElse();
  }
}

abstract class CardDisplayChanged implements SubredditEvent {
  const factory CardDisplayChanged(PostDisplayType displayType) =
      _$CardDisplayChanged;

  PostDisplayType get displayType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardDisplayChangedCopyWith<CardDisplayChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedFetchingStartedCopyWith<$Res> {
  factory $FeedFetchingStartedCopyWith(
          FeedFetchingStarted value, $Res Function(FeedFetchingStarted) then) =
      _$FeedFetchingStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedFetchingStartedCopyWithImpl<$Res>
    extends _$SubredditEventCopyWithImpl<$Res>
    implements $FeedFetchingStartedCopyWith<$Res> {
  _$FeedFetchingStartedCopyWithImpl(
      FeedFetchingStarted _value, $Res Function(FeedFetchingStarted) _then)
      : super(_value, (v) => _then(v as FeedFetchingStarted));

  @override
  FeedFetchingStarted get _value => super._value as FeedFetchingStarted;
}

/// @nodoc

class _$FeedFetchingStarted implements FeedFetchingStarted {
  const _$FeedFetchingStarted();

  @override
  String toString() {
    return 'SubredditEvent.feedFetchingStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FeedFetchingStarted);
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
    required TResult Function(CardDisplayChanged value) cardDisplayChanged,
    required TResult Function(FeedFetchingStarted value) feedFetchingStarted,
    required TResult Function(SubredditInfoFetchingStarted value)
        subredditInfoFetchingStarted,
    required TResult Function(SubredditInfoLoaded value) subredditInfoLoaded,
    required TResult Function(PostsLoaded value) postsLoaded,
    required TResult Function(Failed value) failed,
  }) {
    return feedFetchingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardDisplayChanged value)? cardDisplayChanged,
    TResult Function(FeedFetchingStarted value)? feedFetchingStarted,
    TResult Function(SubredditInfoFetchingStarted value)?
        subredditInfoFetchingStarted,
    TResult Function(SubredditInfoLoaded value)? subredditInfoLoaded,
    TResult Function(PostsLoaded value)? postsLoaded,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (feedFetchingStarted != null) {
      return feedFetchingStarted(this);
    }
    return orElse();
  }
}

abstract class FeedFetchingStarted implements SubredditEvent {
  const factory FeedFetchingStarted() = _$FeedFetchingStarted;
}

/// @nodoc
abstract class $SubredditInfoFetchingStartedCopyWith<$Res> {
  factory $SubredditInfoFetchingStartedCopyWith(
          SubredditInfoFetchingStarted value,
          $Res Function(SubredditInfoFetchingStarted) then) =
      _$SubredditInfoFetchingStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubredditInfoFetchingStartedCopyWithImpl<$Res>
    extends _$SubredditEventCopyWithImpl<$Res>
    implements $SubredditInfoFetchingStartedCopyWith<$Res> {
  _$SubredditInfoFetchingStartedCopyWithImpl(
      SubredditInfoFetchingStarted _value,
      $Res Function(SubredditInfoFetchingStarted) _then)
      : super(_value, (v) => _then(v as SubredditInfoFetchingStarted));

  @override
  SubredditInfoFetchingStarted get _value =>
      super._value as SubredditInfoFetchingStarted;
}

/// @nodoc

class _$SubredditInfoFetchingStarted implements SubredditInfoFetchingStarted {
  const _$SubredditInfoFetchingStarted();

  @override
  String toString() {
    return 'SubredditEvent.subredditInfoFetchingStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubredditInfoFetchingStarted);
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
    required TResult Function(CardDisplayChanged value) cardDisplayChanged,
    required TResult Function(FeedFetchingStarted value) feedFetchingStarted,
    required TResult Function(SubredditInfoFetchingStarted value)
        subredditInfoFetchingStarted,
    required TResult Function(SubredditInfoLoaded value) subredditInfoLoaded,
    required TResult Function(PostsLoaded value) postsLoaded,
    required TResult Function(Failed value) failed,
  }) {
    return subredditInfoFetchingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardDisplayChanged value)? cardDisplayChanged,
    TResult Function(FeedFetchingStarted value)? feedFetchingStarted,
    TResult Function(SubredditInfoFetchingStarted value)?
        subredditInfoFetchingStarted,
    TResult Function(SubredditInfoLoaded value)? subredditInfoLoaded,
    TResult Function(PostsLoaded value)? postsLoaded,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (subredditInfoFetchingStarted != null) {
      return subredditInfoFetchingStarted(this);
    }
    return orElse();
  }
}

abstract class SubredditInfoFetchingStarted implements SubredditEvent {
  const factory SubredditInfoFetchingStarted() = _$SubredditInfoFetchingStarted;
}

/// @nodoc
abstract class $SubredditInfoLoadedCopyWith<$Res> {
  factory $SubredditInfoLoadedCopyWith(
          SubredditInfoLoaded value, $Res Function(SubredditInfoLoaded) then) =
      _$SubredditInfoLoadedCopyWithImpl<$Res>;
  $Res call({SubredditInfo info});
}

/// @nodoc
class _$SubredditInfoLoadedCopyWithImpl<$Res>
    extends _$SubredditEventCopyWithImpl<$Res>
    implements $SubredditInfoLoadedCopyWith<$Res> {
  _$SubredditInfoLoadedCopyWithImpl(
      SubredditInfoLoaded _value, $Res Function(SubredditInfoLoaded) _then)
      : super(_value, (v) => _then(v as SubredditInfoLoaded));

  @override
  SubredditInfoLoaded get _value => super._value as SubredditInfoLoaded;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(SubredditInfoLoaded(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as SubredditInfo,
    ));
  }
}

/// @nodoc

class _$SubredditInfoLoaded implements SubredditInfoLoaded {
  const _$SubredditInfoLoaded(this.info);

  @override
  final SubredditInfo info;

  @override
  String toString() {
    return 'SubredditEvent.subredditInfoLoaded(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubredditInfoLoaded &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  $SubredditInfoLoadedCopyWith<SubredditInfoLoaded> get copyWith =>
      _$SubredditInfoLoadedCopyWithImpl<SubredditInfoLoaded>(this, _$identity);

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
    required TResult Function(CardDisplayChanged value) cardDisplayChanged,
    required TResult Function(FeedFetchingStarted value) feedFetchingStarted,
    required TResult Function(SubredditInfoFetchingStarted value)
        subredditInfoFetchingStarted,
    required TResult Function(SubredditInfoLoaded value) subredditInfoLoaded,
    required TResult Function(PostsLoaded value) postsLoaded,
    required TResult Function(Failed value) failed,
  }) {
    return subredditInfoLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardDisplayChanged value)? cardDisplayChanged,
    TResult Function(FeedFetchingStarted value)? feedFetchingStarted,
    TResult Function(SubredditInfoFetchingStarted value)?
        subredditInfoFetchingStarted,
    TResult Function(SubredditInfoLoaded value)? subredditInfoLoaded,
    TResult Function(PostsLoaded value)? postsLoaded,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (subredditInfoLoaded != null) {
      return subredditInfoLoaded(this);
    }
    return orElse();
  }
}

abstract class SubredditInfoLoaded implements SubredditEvent {
  const factory SubredditInfoLoaded(SubredditInfo info) = _$SubredditInfoLoaded;

  SubredditInfo get info => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubredditInfoLoadedCopyWith<SubredditInfoLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsLoadedCopyWith<$Res> {
  factory $PostsLoadedCopyWith(
          PostsLoaded value, $Res Function(PostsLoaded) then) =
      _$PostsLoadedCopyWithImpl<$Res>;
  $Res call({List<PostEntry> posts});
}

/// @nodoc
class _$PostsLoadedCopyWithImpl<$Res> extends _$SubredditEventCopyWithImpl<$Res>
    implements $PostsLoadedCopyWith<$Res> {
  _$PostsLoadedCopyWithImpl(
      PostsLoaded _value, $Res Function(PostsLoaded) _then)
      : super(_value, (v) => _then(v as PostsLoaded));

  @override
  PostsLoaded get _value => super._value as PostsLoaded;

  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(PostsLoaded(
      posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostEntry>,
    ));
  }
}

/// @nodoc

class _$PostsLoaded implements PostsLoaded {
  const _$PostsLoaded(this.posts);

  @override
  final List<PostEntry> posts;

  @override
  String toString() {
    return 'SubredditEvent.postsLoaded(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostsLoaded &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(posts);

  @JsonKey(ignore: true)
  @override
  $PostsLoadedCopyWith<PostsLoaded> get copyWith =>
      _$PostsLoadedCopyWithImpl<PostsLoaded>(this, _$identity);

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
    required TResult Function(CardDisplayChanged value) cardDisplayChanged,
    required TResult Function(FeedFetchingStarted value) feedFetchingStarted,
    required TResult Function(SubredditInfoFetchingStarted value)
        subredditInfoFetchingStarted,
    required TResult Function(SubredditInfoLoaded value) subredditInfoLoaded,
    required TResult Function(PostsLoaded value) postsLoaded,
    required TResult Function(Failed value) failed,
  }) {
    return postsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardDisplayChanged value)? cardDisplayChanged,
    TResult Function(FeedFetchingStarted value)? feedFetchingStarted,
    TResult Function(SubredditInfoFetchingStarted value)?
        subredditInfoFetchingStarted,
    TResult Function(SubredditInfoLoaded value)? subredditInfoLoaded,
    TResult Function(PostsLoaded value)? postsLoaded,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (postsLoaded != null) {
      return postsLoaded(this);
    }
    return orElse();
  }
}

abstract class PostsLoaded implements SubredditEvent {
  const factory PostsLoaded(List<PostEntry> posts) = _$PostsLoaded;

  List<PostEntry> get posts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsLoadedCopyWith<PostsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
  $Res call({ValueFailure<String> failure});

  $ValueFailureCopyWith<String, $Res> get failure;
}

/// @nodoc
class _$FailedCopyWithImpl<$Res> extends _$SubredditEventCopyWithImpl<$Res>
    implements $FailedCopyWith<$Res> {
  _$FailedCopyWithImpl(Failed _value, $Res Function(Failed) _then)
      : super(_value, (v) => _then(v as Failed));

  @override
  Failed get _value => super._value as Failed;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(Failed(
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

class _$Failed implements Failed {
  const _$Failed(this.failure);

  @override
  final ValueFailure<String> failure;

  @override
  String toString() {
    return 'SubredditEvent.failed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Failed &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $FailedCopyWith<Failed> get copyWith =>
      _$FailedCopyWithImpl<Failed>(this, _$identity);

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
    required TResult Function(CardDisplayChanged value) cardDisplayChanged,
    required TResult Function(FeedFetchingStarted value) feedFetchingStarted,
    required TResult Function(SubredditInfoFetchingStarted value)
        subredditInfoFetchingStarted,
    required TResult Function(SubredditInfoLoaded value) subredditInfoLoaded,
    required TResult Function(PostsLoaded value) postsLoaded,
    required TResult Function(Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardDisplayChanged value)? cardDisplayChanged,
    TResult Function(FeedFetchingStarted value)? feedFetchingStarted,
    TResult Function(SubredditInfoFetchingStarted value)?
        subredditInfoFetchingStarted,
    TResult Function(SubredditInfoLoaded value)? subredditInfoLoaded,
    TResult Function(PostsLoaded value)? postsLoaded,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed implements SubredditEvent {
  const factory Failed(ValueFailure<String> failure) = _$Failed;

  ValueFailure<String> get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailedCopyWith<Failed> get copyWith => throw _privateConstructorUsedError;
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
