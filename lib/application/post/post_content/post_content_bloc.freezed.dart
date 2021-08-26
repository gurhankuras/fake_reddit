// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_content_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostContentEventTearOff {
  const _$PostContentEventTearOff();

  _MetaDataFetchingStarted metaDataFetchinStarted(String postId) {
    return _MetaDataFetchingStarted(
      postId,
    );
  }
}

/// @nodoc
const $PostContentEvent = _$PostContentEventTearOff();

/// @nodoc
mixin _$PostContentEvent {
  String get postId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId) metaDataFetchinStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId)? metaDataFetchinStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MetaDataFetchingStarted value)
        metaDataFetchinStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MetaDataFetchingStarted value)? metaDataFetchinStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostContentEventCopyWith<PostContentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostContentEventCopyWith<$Res> {
  factory $PostContentEventCopyWith(
          PostContentEvent value, $Res Function(PostContentEvent) then) =
      _$PostContentEventCopyWithImpl<$Res>;
  $Res call({String postId});
}

/// @nodoc
class _$PostContentEventCopyWithImpl<$Res>
    implements $PostContentEventCopyWith<$Res> {
  _$PostContentEventCopyWithImpl(this._value, this._then);

  final PostContentEvent _value;
  // ignore: unused_field
  final $Res Function(PostContentEvent) _then;

  @override
  $Res call({
    Object? postId = freezed,
  }) {
    return _then(_value.copyWith(
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MetaDataFetchingStartedCopyWith<$Res>
    implements $PostContentEventCopyWith<$Res> {
  factory _$MetaDataFetchingStartedCopyWith(_MetaDataFetchingStarted value,
          $Res Function(_MetaDataFetchingStarted) then) =
      __$MetaDataFetchingStartedCopyWithImpl<$Res>;
  @override
  $Res call({String postId});
}

/// @nodoc
class __$MetaDataFetchingStartedCopyWithImpl<$Res>
    extends _$PostContentEventCopyWithImpl<$Res>
    implements _$MetaDataFetchingStartedCopyWith<$Res> {
  __$MetaDataFetchingStartedCopyWithImpl(_MetaDataFetchingStarted _value,
      $Res Function(_MetaDataFetchingStarted) _then)
      : super(_value, (v) => _then(v as _MetaDataFetchingStarted));

  @override
  _MetaDataFetchingStarted get _value =>
      super._value as _MetaDataFetchingStarted;

  @override
  $Res call({
    Object? postId = freezed,
  }) {
    return _then(_MetaDataFetchingStarted(
      postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MetaDataFetchingStarted implements _MetaDataFetchingStarted {
  const _$_MetaDataFetchingStarted(this.postId);

  @override
  final String postId;

  @override
  String toString() {
    return 'PostContentEvent.metaDataFetchinStarted(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MetaDataFetchingStarted &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postId);

  @JsonKey(ignore: true)
  @override
  _$MetaDataFetchingStartedCopyWith<_MetaDataFetchingStarted> get copyWith =>
      __$MetaDataFetchingStartedCopyWithImpl<_MetaDataFetchingStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId) metaDataFetchinStarted,
  }) {
    return metaDataFetchinStarted(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId)? metaDataFetchinStarted,
    required TResult orElse(),
  }) {
    if (metaDataFetchinStarted != null) {
      return metaDataFetchinStarted(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MetaDataFetchingStarted value)
        metaDataFetchinStarted,
  }) {
    return metaDataFetchinStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MetaDataFetchingStarted value)? metaDataFetchinStarted,
    required TResult orElse(),
  }) {
    if (metaDataFetchinStarted != null) {
      return metaDataFetchinStarted(this);
    }
    return orElse();
  }
}

abstract class _MetaDataFetchingStarted implements PostContentEvent {
  const factory _MetaDataFetchingStarted(String postId) =
      _$_MetaDataFetchingStarted;

  @override
  String get postId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MetaDataFetchingStartedCopyWith<_MetaDataFetchingStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PostContentStateTearOff {
  const _$PostContentStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Fetched fetched({required int commentCount, required int upvotes}) {
    return _Fetched(
      commentCount: commentCount,
      upvotes: upvotes,
    );
  }

  _Failed failed(ServerFailure failure) {
    return _Failed(
      failure,
    );
  }
}

/// @nodoc
const $PostContentState = _$PostContentStateTearOff();

/// @nodoc
mixin _$PostContentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int commentCount, int upvotes) fetched,
    required TResult Function(ServerFailure failure) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int commentCount, int upvotes)? fetched,
    TResult Function(ServerFailure failure)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostContentStateCopyWith<$Res> {
  factory $PostContentStateCopyWith(
          PostContentState value, $Res Function(PostContentState) then) =
      _$PostContentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostContentStateCopyWithImpl<$Res>
    implements $PostContentStateCopyWith<$Res> {
  _$PostContentStateCopyWithImpl(this._value, this._then);

  final PostContentState _value;
  // ignore: unused_field
  final $Res Function(PostContentState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PostContentStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PostContentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int commentCount, int upvotes) fetched,
    required TResult Function(ServerFailure failure) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int commentCount, int upvotes)? fetched,
    TResult Function(ServerFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PostContentState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$PostContentStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'PostContentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int commentCount, int upvotes) fetched,
    required TResult Function(ServerFailure failure) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int commentCount, int upvotes)? fetched,
    TResult Function(ServerFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PostContentState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$FetchedCopyWith<$Res> {
  factory _$FetchedCopyWith(_Fetched value, $Res Function(_Fetched) then) =
      __$FetchedCopyWithImpl<$Res>;
  $Res call({int commentCount, int upvotes});
}

/// @nodoc
class __$FetchedCopyWithImpl<$Res> extends _$PostContentStateCopyWithImpl<$Res>
    implements _$FetchedCopyWith<$Res> {
  __$FetchedCopyWithImpl(_Fetched _value, $Res Function(_Fetched) _then)
      : super(_value, (v) => _then(v as _Fetched));

  @override
  _Fetched get _value => super._value as _Fetched;

  @override
  $Res call({
    Object? commentCount = freezed,
    Object? upvotes = freezed,
  }) {
    return _then(_Fetched(
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

class _$_Fetched implements _Fetched {
  const _$_Fetched({required this.commentCount, required this.upvotes});

  @override
  final int commentCount;
  @override
  final int upvotes;

  @override
  String toString() {
    return 'PostContentState.fetched(commentCount: $commentCount, upvotes: $upvotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Fetched &&
            (identical(other.commentCount, commentCount) ||
                const DeepCollectionEquality()
                    .equals(other.commentCount, commentCount)) &&
            (identical(other.upvotes, upvotes) ||
                const DeepCollectionEquality().equals(other.upvotes, upvotes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(commentCount) ^
      const DeepCollectionEquality().hash(upvotes);

  @JsonKey(ignore: true)
  @override
  _$FetchedCopyWith<_Fetched> get copyWith =>
      __$FetchedCopyWithImpl<_Fetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int commentCount, int upvotes) fetched,
    required TResult Function(ServerFailure failure) failed,
  }) {
    return fetched(commentCount, upvotes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int commentCount, int upvotes)? fetched,
    TResult Function(ServerFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(commentCount, upvotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Failed value) failed,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _Fetched implements PostContentState {
  const factory _Fetched({required int commentCount, required int upvotes}) =
      _$_Fetched;

  int get commentCount => throw _privateConstructorUsedError;
  int get upvotes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchedCopyWith<_Fetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({ServerFailure failure});

  $ServerFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailedCopyWithImpl<$Res> extends _$PostContentStateCopyWithImpl<$Res>
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
              as ServerFailure,
    ));
  }

  @override
  $ServerFailureCopyWith<$Res> get failure {
    return $ServerFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed(this.failure);

  @override
  final ServerFailure failure;

  @override
  String toString() {
    return 'PostContentState.failed(failure: $failure)';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int commentCount, int upvotes) fetched,
    required TResult Function(ServerFailure failure) failed,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int commentCount, int upvotes)? fetched,
    TResult Function(ServerFailure failure)? failed,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements PostContentState {
  const factory _Failed(ServerFailure failure) = _$_Failed;

  ServerFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailedCopyWith<_Failed> get copyWith => throw _privateConstructorUsedError;
}
