// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FeedEventTearOff {
  const _$FeedEventTearOff();

  RefreshRequested refreshRequested() {
    return const RefreshRequested();
  }

  LoadMoreRequested loadMoreRequested() {
    return const LoadMoreRequested();
  }

  FetchingStarted fetchingStarted() {
    return const FetchingStarted();
  }

  PostVisited postVisited(
      {required String postId,
      required int commentCount,
      required int upvotes}) {
    return PostVisited(
      postId: postId,
      commentCount: commentCount,
      upvotes: upvotes,
    );
  }
}

/// @nodoc
const $FeedEvent = _$FeedEventTearOff();

/// @nodoc
mixin _$FeedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshRequested,
    required TResult Function() loadMoreRequested,
    required TResult Function() fetchingStarted,
    required TResult Function(String postId, int commentCount, int upvotes)
        postVisited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshRequested,
    TResult Function()? loadMoreRequested,
    TResult Function()? fetchingStarted,
    TResult Function(String postId, int commentCount, int upvotes)? postVisited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshRequested value) refreshRequested,
    required TResult Function(LoadMoreRequested value) loadMoreRequested,
    required TResult Function(FetchingStarted value) fetchingStarted,
    required TResult Function(PostVisited value) postVisited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshRequested value)? refreshRequested,
    TResult Function(LoadMoreRequested value)? loadMoreRequested,
    TResult Function(FetchingStarted value)? fetchingStarted,
    TResult Function(PostVisited value)? postVisited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedEventCopyWith<$Res> {
  factory $FeedEventCopyWith(FeedEvent value, $Res Function(FeedEvent) then) =
      _$FeedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedEventCopyWithImpl<$Res> implements $FeedEventCopyWith<$Res> {
  _$FeedEventCopyWithImpl(this._value, this._then);

  final FeedEvent _value;
  // ignore: unused_field
  final $Res Function(FeedEvent) _then;
}

/// @nodoc
abstract class $RefreshRequestedCopyWith<$Res> {
  factory $RefreshRequestedCopyWith(
          RefreshRequested value, $Res Function(RefreshRequested) then) =
      _$RefreshRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RefreshRequestedCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
    implements $RefreshRequestedCopyWith<$Res> {
  _$RefreshRequestedCopyWithImpl(
      RefreshRequested _value, $Res Function(RefreshRequested) _then)
      : super(_value, (v) => _then(v as RefreshRequested));

  @override
  RefreshRequested get _value => super._value as RefreshRequested;
}

/// @nodoc

class _$RefreshRequested implements RefreshRequested {
  const _$RefreshRequested();

  @override
  String toString() {
    return 'FeedEvent.refreshRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RefreshRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshRequested,
    required TResult Function() loadMoreRequested,
    required TResult Function() fetchingStarted,
    required TResult Function(String postId, int commentCount, int upvotes)
        postVisited,
  }) {
    return refreshRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshRequested,
    TResult Function()? loadMoreRequested,
    TResult Function()? fetchingStarted,
    TResult Function(String postId, int commentCount, int upvotes)? postVisited,
    required TResult orElse(),
  }) {
    if (refreshRequested != null) {
      return refreshRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshRequested value) refreshRequested,
    required TResult Function(LoadMoreRequested value) loadMoreRequested,
    required TResult Function(FetchingStarted value) fetchingStarted,
    required TResult Function(PostVisited value) postVisited,
  }) {
    return refreshRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshRequested value)? refreshRequested,
    TResult Function(LoadMoreRequested value)? loadMoreRequested,
    TResult Function(FetchingStarted value)? fetchingStarted,
    TResult Function(PostVisited value)? postVisited,
    required TResult orElse(),
  }) {
    if (refreshRequested != null) {
      return refreshRequested(this);
    }
    return orElse();
  }
}

abstract class RefreshRequested implements FeedEvent {
  const factory RefreshRequested() = _$RefreshRequested;
}

/// @nodoc
abstract class $LoadMoreRequestedCopyWith<$Res> {
  factory $LoadMoreRequestedCopyWith(
          LoadMoreRequested value, $Res Function(LoadMoreRequested) then) =
      _$LoadMoreRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadMoreRequestedCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res>
    implements $LoadMoreRequestedCopyWith<$Res> {
  _$LoadMoreRequestedCopyWithImpl(
      LoadMoreRequested _value, $Res Function(LoadMoreRequested) _then)
      : super(_value, (v) => _then(v as LoadMoreRequested));

  @override
  LoadMoreRequested get _value => super._value as LoadMoreRequested;
}

/// @nodoc

class _$LoadMoreRequested implements LoadMoreRequested {
  const _$LoadMoreRequested();

  @override
  String toString() {
    return 'FeedEvent.loadMoreRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadMoreRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshRequested,
    required TResult Function() loadMoreRequested,
    required TResult Function() fetchingStarted,
    required TResult Function(String postId, int commentCount, int upvotes)
        postVisited,
  }) {
    return loadMoreRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshRequested,
    TResult Function()? loadMoreRequested,
    TResult Function()? fetchingStarted,
    TResult Function(String postId, int commentCount, int upvotes)? postVisited,
    required TResult orElse(),
  }) {
    if (loadMoreRequested != null) {
      return loadMoreRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshRequested value) refreshRequested,
    required TResult Function(LoadMoreRequested value) loadMoreRequested,
    required TResult Function(FetchingStarted value) fetchingStarted,
    required TResult Function(PostVisited value) postVisited,
  }) {
    return loadMoreRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshRequested value)? refreshRequested,
    TResult Function(LoadMoreRequested value)? loadMoreRequested,
    TResult Function(FetchingStarted value)? fetchingStarted,
    TResult Function(PostVisited value)? postVisited,
    required TResult orElse(),
  }) {
    if (loadMoreRequested != null) {
      return loadMoreRequested(this);
    }
    return orElse();
  }
}

abstract class LoadMoreRequested implements FeedEvent {
  const factory LoadMoreRequested() = _$LoadMoreRequested;
}

/// @nodoc
abstract class $FetchingStartedCopyWith<$Res> {
  factory $FetchingStartedCopyWith(
          FetchingStarted value, $Res Function(FetchingStarted) then) =
      _$FetchingStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchingStartedCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
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
    return 'FeedEvent.fetchingStarted()';
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
    required TResult Function() refreshRequested,
    required TResult Function() loadMoreRequested,
    required TResult Function() fetchingStarted,
    required TResult Function(String postId, int commentCount, int upvotes)
        postVisited,
  }) {
    return fetchingStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshRequested,
    TResult Function()? loadMoreRequested,
    TResult Function()? fetchingStarted,
    TResult Function(String postId, int commentCount, int upvotes)? postVisited,
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
    required TResult Function(RefreshRequested value) refreshRequested,
    required TResult Function(LoadMoreRequested value) loadMoreRequested,
    required TResult Function(FetchingStarted value) fetchingStarted,
    required TResult Function(PostVisited value) postVisited,
  }) {
    return fetchingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshRequested value)? refreshRequested,
    TResult Function(LoadMoreRequested value)? loadMoreRequested,
    TResult Function(FetchingStarted value)? fetchingStarted,
    TResult Function(PostVisited value)? postVisited,
    required TResult orElse(),
  }) {
    if (fetchingStarted != null) {
      return fetchingStarted(this);
    }
    return orElse();
  }
}

abstract class FetchingStarted implements FeedEvent {
  const factory FetchingStarted() = _$FetchingStarted;
}

/// @nodoc
abstract class $PostVisitedCopyWith<$Res> {
  factory $PostVisitedCopyWith(
          PostVisited value, $Res Function(PostVisited) then) =
      _$PostVisitedCopyWithImpl<$Res>;
  $Res call({String postId, int commentCount, int upvotes});
}

/// @nodoc
class _$PostVisitedCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
    implements $PostVisitedCopyWith<$Res> {
  _$PostVisitedCopyWithImpl(
      PostVisited _value, $Res Function(PostVisited) _then)
      : super(_value, (v) => _then(v as PostVisited));

  @override
  PostVisited get _value => super._value as PostVisited;

  @override
  $Res call({
    Object? postId = freezed,
    Object? commentCount = freezed,
    Object? upvotes = freezed,
  }) {
    return _then(PostVisited(
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      upvotes: upvotes == freezed
          ? _value.upvotes
          : upvotes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PostVisited implements PostVisited {
  const _$PostVisited(
      {required this.postId,
      required this.commentCount,
      required this.upvotes});

  @override
  final String postId;
  @override
  final int commentCount;
  @override
  final int upvotes;

  @override
  String toString() {
    return 'FeedEvent.postVisited(postId: $postId, commentCount: $commentCount, upvotes: $upvotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostVisited &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)) &&
            (identical(other.commentCount, commentCount) ||
                const DeepCollectionEquality()
                    .equals(other.commentCount, commentCount)) &&
            (identical(other.upvotes, upvotes) ||
                const DeepCollectionEquality().equals(other.upvotes, upvotes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postId) ^
      const DeepCollectionEquality().hash(commentCount) ^
      const DeepCollectionEquality().hash(upvotes);

  @JsonKey(ignore: true)
  @override
  $PostVisitedCopyWith<PostVisited> get copyWith =>
      _$PostVisitedCopyWithImpl<PostVisited>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshRequested,
    required TResult Function() loadMoreRequested,
    required TResult Function() fetchingStarted,
    required TResult Function(String postId, int commentCount, int upvotes)
        postVisited,
  }) {
    return postVisited(postId, commentCount, upvotes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshRequested,
    TResult Function()? loadMoreRequested,
    TResult Function()? fetchingStarted,
    TResult Function(String postId, int commentCount, int upvotes)? postVisited,
    required TResult orElse(),
  }) {
    if (postVisited != null) {
      return postVisited(postId, commentCount, upvotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshRequested value) refreshRequested,
    required TResult Function(LoadMoreRequested value) loadMoreRequested,
    required TResult Function(FetchingStarted value) fetchingStarted,
    required TResult Function(PostVisited value) postVisited,
  }) {
    return postVisited(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshRequested value)? refreshRequested,
    TResult Function(LoadMoreRequested value)? loadMoreRequested,
    TResult Function(FetchingStarted value)? fetchingStarted,
    TResult Function(PostVisited value)? postVisited,
    required TResult orElse(),
  }) {
    if (postVisited != null) {
      return postVisited(this);
    }
    return orElse();
  }
}

abstract class PostVisited implements FeedEvent {
  const factory PostVisited(
      {required String postId,
      required int commentCount,
      required int upvotes}) = _$PostVisited;

  String get postId => throw _privateConstructorUsedError;
  int get commentCount => throw _privateConstructorUsedError;
  int get upvotes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostVisitedCopyWith<PostVisited> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FeedStateTearOff {
  const _$FeedStateTearOff();

  _FeedState call(
      {required bool hasReachedMax,
      required List<PostEntry> posts,
      required bool fetchingLoading,
      required bool refreshLoading,
      required bool morePostLoading,
      required int page}) {
    return _FeedState(
      hasReachedMax: hasReachedMax,
      posts: posts,
      fetchingLoading: fetchingLoading,
      refreshLoading: refreshLoading,
      morePostLoading: morePostLoading,
      page: page,
    );
  }
}

/// @nodoc
const $FeedState = _$FeedStateTearOff();

/// @nodoc
mixin _$FeedState {
  bool get hasReachedMax => throw _privateConstructorUsedError;
  List<PostEntry> get posts => throw _privateConstructorUsedError;
  bool get fetchingLoading => throw _privateConstructorUsedError;
  bool get refreshLoading => throw _privateConstructorUsedError;
  bool get morePostLoading => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeedStateCopyWith<FeedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStateCopyWith<$Res> {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) then) =
      _$FeedStateCopyWithImpl<$Res>;
  $Res call(
      {bool hasReachedMax,
      List<PostEntry> posts,
      bool fetchingLoading,
      bool refreshLoading,
      bool morePostLoading,
      int page});
}

/// @nodoc
class _$FeedStateCopyWithImpl<$Res> implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._value, this._then);

  final FeedState _value;
  // ignore: unused_field
  final $Res Function(FeedState) _then;

  @override
  $Res call({
    Object? hasReachedMax = freezed,
    Object? posts = freezed,
    Object? fetchingLoading = freezed,
    Object? refreshLoading = freezed,
    Object? morePostLoading = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostEntry>,
      fetchingLoading: fetchingLoading == freezed
          ? _value.fetchingLoading
          : fetchingLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      refreshLoading: refreshLoading == freezed
          ? _value.refreshLoading
          : refreshLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      morePostLoading: morePostLoading == freezed
          ? _value.morePostLoading
          : morePostLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$FeedStateCopyWith<$Res> implements $FeedStateCopyWith<$Res> {
  factory _$FeedStateCopyWith(
          _FeedState value, $Res Function(_FeedState) then) =
      __$FeedStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool hasReachedMax,
      List<PostEntry> posts,
      bool fetchingLoading,
      bool refreshLoading,
      bool morePostLoading,
      int page});
}

/// @nodoc
class __$FeedStateCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements _$FeedStateCopyWith<$Res> {
  __$FeedStateCopyWithImpl(_FeedState _value, $Res Function(_FeedState) _then)
      : super(_value, (v) => _then(v as _FeedState));

  @override
  _FeedState get _value => super._value as _FeedState;

  @override
  $Res call({
    Object? hasReachedMax = freezed,
    Object? posts = freezed,
    Object? fetchingLoading = freezed,
    Object? refreshLoading = freezed,
    Object? morePostLoading = freezed,
    Object? page = freezed,
  }) {
    return _then(_FeedState(
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostEntry>,
      fetchingLoading: fetchingLoading == freezed
          ? _value.fetchingLoading
          : fetchingLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      refreshLoading: refreshLoading == freezed
          ? _value.refreshLoading
          : refreshLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      morePostLoading: morePostLoading == freezed
          ? _value.morePostLoading
          : morePostLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FeedState implements _FeedState {
  const _$_FeedState(
      {required this.hasReachedMax,
      required this.posts,
      required this.fetchingLoading,
      required this.refreshLoading,
      required this.morePostLoading,
      required this.page});

  @override
  final bool hasReachedMax;
  @override
  final List<PostEntry> posts;
  @override
  final bool fetchingLoading;
  @override
  final bool refreshLoading;
  @override
  final bool morePostLoading;
  @override
  final int page;

  @override
  String toString() {
    return 'FeedState(hasReachedMax: $hasReachedMax, posts: $posts, fetchingLoading: $fetchingLoading, refreshLoading: $refreshLoading, morePostLoading: $morePostLoading, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeedState &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                const DeepCollectionEquality()
                    .equals(other.hasReachedMax, hasReachedMax)) &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)) &&
            (identical(other.fetchingLoading, fetchingLoading) ||
                const DeepCollectionEquality()
                    .equals(other.fetchingLoading, fetchingLoading)) &&
            (identical(other.refreshLoading, refreshLoading) ||
                const DeepCollectionEquality()
                    .equals(other.refreshLoading, refreshLoading)) &&
            (identical(other.morePostLoading, morePostLoading) ||
                const DeepCollectionEquality()
                    .equals(other.morePostLoading, morePostLoading)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hasReachedMax) ^
      const DeepCollectionEquality().hash(posts) ^
      const DeepCollectionEquality().hash(fetchingLoading) ^
      const DeepCollectionEquality().hash(refreshLoading) ^
      const DeepCollectionEquality().hash(morePostLoading) ^
      const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  _$FeedStateCopyWith<_FeedState> get copyWith =>
      __$FeedStateCopyWithImpl<_FeedState>(this, _$identity);
}

abstract class _FeedState implements FeedState {
  const factory _FeedState(
      {required bool hasReachedMax,
      required List<PostEntry> posts,
      required bool fetchingLoading,
      required bool refreshLoading,
      required bool morePostLoading,
      required int page}) = _$_FeedState;

  @override
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @override
  List<PostEntry> get posts => throw _privateConstructorUsedError;
  @override
  bool get fetchingLoading => throw _privateConstructorUsedError;
  @override
  bool get refreshLoading => throw _privateConstructorUsedError;
  @override
  bool get morePostLoading => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FeedStateCopyWith<_FeedState> get copyWith =>
      throw _privateConstructorUsedError;
}
