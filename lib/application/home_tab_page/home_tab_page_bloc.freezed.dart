// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_tab_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeTabPageEventTearOff {
  const _$HomeTabPageEventTearOff();

  _RefreshRequested refreshRequested() {
    return const _RefreshRequested();
  }

  _LoadMoreRequested loadMoreRequested() {
    return const _LoadMoreRequested();
  }

  _FetchingStarted fetchingStarted() {
    return const _FetchingStarted();
  }
}

/// @nodoc
const $HomeTabPageEvent = _$HomeTabPageEventTearOff();

/// @nodoc
mixin _$HomeTabPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshRequested,
    required TResult Function() loadMoreRequested,
    required TResult Function() fetchingStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshRequested,
    TResult Function()? loadMoreRequested,
    TResult Function()? fetchingStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshRequested value) refreshRequested,
    required TResult Function(_LoadMoreRequested value) loadMoreRequested,
    required TResult Function(_FetchingStarted value) fetchingStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshRequested value)? refreshRequested,
    TResult Function(_LoadMoreRequested value)? loadMoreRequested,
    TResult Function(_FetchingStarted value)? fetchingStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTabPageEventCopyWith<$Res> {
  factory $HomeTabPageEventCopyWith(
          HomeTabPageEvent value, $Res Function(HomeTabPageEvent) then) =
      _$HomeTabPageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeTabPageEventCopyWithImpl<$Res>
    implements $HomeTabPageEventCopyWith<$Res> {
  _$HomeTabPageEventCopyWithImpl(this._value, this._then);

  final HomeTabPageEvent _value;
  // ignore: unused_field
  final $Res Function(HomeTabPageEvent) _then;
}

/// @nodoc
abstract class _$RefreshRequestedCopyWith<$Res> {
  factory _$RefreshRequestedCopyWith(
          _RefreshRequested value, $Res Function(_RefreshRequested) then) =
      __$RefreshRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshRequestedCopyWithImpl<$Res>
    extends _$HomeTabPageEventCopyWithImpl<$Res>
    implements _$RefreshRequestedCopyWith<$Res> {
  __$RefreshRequestedCopyWithImpl(
      _RefreshRequested _value, $Res Function(_RefreshRequested) _then)
      : super(_value, (v) => _then(v as _RefreshRequested));

  @override
  _RefreshRequested get _value => super._value as _RefreshRequested;
}

/// @nodoc

class _$_RefreshRequested implements _RefreshRequested {
  const _$_RefreshRequested();

  @override
  String toString() {
    return 'HomeTabPageEvent.refreshRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RefreshRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshRequested,
    required TResult Function() loadMoreRequested,
    required TResult Function() fetchingStarted,
  }) {
    return refreshRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshRequested,
    TResult Function()? loadMoreRequested,
    TResult Function()? fetchingStarted,
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
    required TResult Function(_RefreshRequested value) refreshRequested,
    required TResult Function(_LoadMoreRequested value) loadMoreRequested,
    required TResult Function(_FetchingStarted value) fetchingStarted,
  }) {
    return refreshRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshRequested value)? refreshRequested,
    TResult Function(_LoadMoreRequested value)? loadMoreRequested,
    TResult Function(_FetchingStarted value)? fetchingStarted,
    required TResult orElse(),
  }) {
    if (refreshRequested != null) {
      return refreshRequested(this);
    }
    return orElse();
  }
}

abstract class _RefreshRequested implements HomeTabPageEvent {
  const factory _RefreshRequested() = _$_RefreshRequested;
}

/// @nodoc
abstract class _$LoadMoreRequestedCopyWith<$Res> {
  factory _$LoadMoreRequestedCopyWith(
          _LoadMoreRequested value, $Res Function(_LoadMoreRequested) then) =
      __$LoadMoreRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadMoreRequestedCopyWithImpl<$Res>
    extends _$HomeTabPageEventCopyWithImpl<$Res>
    implements _$LoadMoreRequestedCopyWith<$Res> {
  __$LoadMoreRequestedCopyWithImpl(
      _LoadMoreRequested _value, $Res Function(_LoadMoreRequested) _then)
      : super(_value, (v) => _then(v as _LoadMoreRequested));

  @override
  _LoadMoreRequested get _value => super._value as _LoadMoreRequested;
}

/// @nodoc

class _$_LoadMoreRequested implements _LoadMoreRequested {
  const _$_LoadMoreRequested();

  @override
  String toString() {
    return 'HomeTabPageEvent.loadMoreRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadMoreRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshRequested,
    required TResult Function() loadMoreRequested,
    required TResult Function() fetchingStarted,
  }) {
    return loadMoreRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshRequested,
    TResult Function()? loadMoreRequested,
    TResult Function()? fetchingStarted,
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
    required TResult Function(_RefreshRequested value) refreshRequested,
    required TResult Function(_LoadMoreRequested value) loadMoreRequested,
    required TResult Function(_FetchingStarted value) fetchingStarted,
  }) {
    return loadMoreRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshRequested value)? refreshRequested,
    TResult Function(_LoadMoreRequested value)? loadMoreRequested,
    TResult Function(_FetchingStarted value)? fetchingStarted,
    required TResult orElse(),
  }) {
    if (loadMoreRequested != null) {
      return loadMoreRequested(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreRequested implements HomeTabPageEvent {
  const factory _LoadMoreRequested() = _$_LoadMoreRequested;
}

/// @nodoc
abstract class _$FetchingStartedCopyWith<$Res> {
  factory _$FetchingStartedCopyWith(
          _FetchingStarted value, $Res Function(_FetchingStarted) then) =
      __$FetchingStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchingStartedCopyWithImpl<$Res>
    extends _$HomeTabPageEventCopyWithImpl<$Res>
    implements _$FetchingStartedCopyWith<$Res> {
  __$FetchingStartedCopyWithImpl(
      _FetchingStarted _value, $Res Function(_FetchingStarted) _then)
      : super(_value, (v) => _then(v as _FetchingStarted));

  @override
  _FetchingStarted get _value => super._value as _FetchingStarted;
}

/// @nodoc

class _$_FetchingStarted implements _FetchingStarted {
  const _$_FetchingStarted();

  @override
  String toString() {
    return 'HomeTabPageEvent.fetchingStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchingStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshRequested,
    required TResult Function() loadMoreRequested,
    required TResult Function() fetchingStarted,
  }) {
    return fetchingStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshRequested,
    TResult Function()? loadMoreRequested,
    TResult Function()? fetchingStarted,
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
    required TResult Function(_RefreshRequested value) refreshRequested,
    required TResult Function(_LoadMoreRequested value) loadMoreRequested,
    required TResult Function(_FetchingStarted value) fetchingStarted,
  }) {
    return fetchingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RefreshRequested value)? refreshRequested,
    TResult Function(_LoadMoreRequested value)? loadMoreRequested,
    TResult Function(_FetchingStarted value)? fetchingStarted,
    required TResult orElse(),
  }) {
    if (fetchingStarted != null) {
      return fetchingStarted(this);
    }
    return orElse();
  }
}

abstract class _FetchingStarted implements HomeTabPageEvent {
  const factory _FetchingStarted() = _$_FetchingStarted;
}

/// @nodoc
class _$HomeTabPageStateTearOff {
  const _$HomeTabPageStateTearOff();

  _HomeTabPageState call(
      {required bool hasReachedMax,
      required List<PostEntry> posts,
      required bool fetchingLoading,
      required bool refreshLoading,
      required bool morePostLoading,
      required int page}) {
    return _HomeTabPageState(
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
const $HomeTabPageState = _$HomeTabPageStateTearOff();

/// @nodoc
mixin _$HomeTabPageState {
  bool get hasReachedMax => throw _privateConstructorUsedError;
  List<PostEntry> get posts => throw _privateConstructorUsedError;
  bool get fetchingLoading => throw _privateConstructorUsedError;
  bool get refreshLoading => throw _privateConstructorUsedError;
  bool get morePostLoading => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeTabPageStateCopyWith<HomeTabPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTabPageStateCopyWith<$Res> {
  factory $HomeTabPageStateCopyWith(
          HomeTabPageState value, $Res Function(HomeTabPageState) then) =
      _$HomeTabPageStateCopyWithImpl<$Res>;
  $Res call(
      {bool hasReachedMax,
      List<PostEntry> posts,
      bool fetchingLoading,
      bool refreshLoading,
      bool morePostLoading,
      int page});
}

/// @nodoc
class _$HomeTabPageStateCopyWithImpl<$Res>
    implements $HomeTabPageStateCopyWith<$Res> {
  _$HomeTabPageStateCopyWithImpl(this._value, this._then);

  final HomeTabPageState _value;
  // ignore: unused_field
  final $Res Function(HomeTabPageState) _then;

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
abstract class _$HomeTabPageStateCopyWith<$Res>
    implements $HomeTabPageStateCopyWith<$Res> {
  factory _$HomeTabPageStateCopyWith(
          _HomeTabPageState value, $Res Function(_HomeTabPageState) then) =
      __$HomeTabPageStateCopyWithImpl<$Res>;
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
class __$HomeTabPageStateCopyWithImpl<$Res>
    extends _$HomeTabPageStateCopyWithImpl<$Res>
    implements _$HomeTabPageStateCopyWith<$Res> {
  __$HomeTabPageStateCopyWithImpl(
      _HomeTabPageState _value, $Res Function(_HomeTabPageState) _then)
      : super(_value, (v) => _then(v as _HomeTabPageState));

  @override
  _HomeTabPageState get _value => super._value as _HomeTabPageState;

  @override
  $Res call({
    Object? hasReachedMax = freezed,
    Object? posts = freezed,
    Object? fetchingLoading = freezed,
    Object? refreshLoading = freezed,
    Object? morePostLoading = freezed,
    Object? page = freezed,
  }) {
    return _then(_HomeTabPageState(
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

class _$_HomeTabPageState implements _HomeTabPageState {
  const _$_HomeTabPageState(
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
    return 'HomeTabPageState(hasReachedMax: $hasReachedMax, posts: $posts, fetchingLoading: $fetchingLoading, refreshLoading: $refreshLoading, morePostLoading: $morePostLoading, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeTabPageState &&
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
  _$HomeTabPageStateCopyWith<_HomeTabPageState> get copyWith =>
      __$HomeTabPageStateCopyWithImpl<_HomeTabPageState>(this, _$identity);
}

abstract class _HomeTabPageState implements HomeTabPageState {
  const factory _HomeTabPageState(
      {required bool hasReachedMax,
      required List<PostEntry> posts,
      required bool fetchingLoading,
      required bool refreshLoading,
      required bool morePostLoading,
      required int page}) = _$_HomeTabPageState;

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
  _$HomeTabPageStateCopyWith<_HomeTabPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
