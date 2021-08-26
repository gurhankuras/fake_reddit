// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_comment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostCommentEventTearOff {
  const _$PostCommentEventTearOff();

  _CommentsFetchingStarted commentsFetchingStarted() {
    return const _CommentsFetchingStarted();
  }

  _CommentFilteringChanged commentFilteringChanged() {
    return const _CommentFilteringChanged();
  }
}

/// @nodoc
const $PostCommentEvent = _$PostCommentEventTearOff();

/// @nodoc
mixin _$PostCommentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() commentsFetchingStarted,
    required TResult Function() commentFilteringChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? commentsFetchingStarted,
    TResult Function()? commentFilteringChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsFetchingStarted value)
        commentsFetchingStarted,
    required TResult Function(_CommentFilteringChanged value)
        commentFilteringChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsFetchingStarted value)? commentsFetchingStarted,
    TResult Function(_CommentFilteringChanged value)? commentFilteringChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCommentEventCopyWith<$Res> {
  factory $PostCommentEventCopyWith(
          PostCommentEvent value, $Res Function(PostCommentEvent) then) =
      _$PostCommentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostCommentEventCopyWithImpl<$Res>
    implements $PostCommentEventCopyWith<$Res> {
  _$PostCommentEventCopyWithImpl(this._value, this._then);

  final PostCommentEvent _value;
  // ignore: unused_field
  final $Res Function(PostCommentEvent) _then;
}

/// @nodoc
abstract class _$CommentsFetchingStartedCopyWith<$Res> {
  factory _$CommentsFetchingStartedCopyWith(_CommentsFetchingStarted value,
          $Res Function(_CommentsFetchingStarted) then) =
      __$CommentsFetchingStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CommentsFetchingStartedCopyWithImpl<$Res>
    extends _$PostCommentEventCopyWithImpl<$Res>
    implements _$CommentsFetchingStartedCopyWith<$Res> {
  __$CommentsFetchingStartedCopyWithImpl(_CommentsFetchingStarted _value,
      $Res Function(_CommentsFetchingStarted) _then)
      : super(_value, (v) => _then(v as _CommentsFetchingStarted));

  @override
  _CommentsFetchingStarted get _value =>
      super._value as _CommentsFetchingStarted;
}

/// @nodoc

class _$_CommentsFetchingStarted implements _CommentsFetchingStarted {
  const _$_CommentsFetchingStarted();

  @override
  String toString() {
    return 'PostCommentEvent.commentsFetchingStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CommentsFetchingStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() commentsFetchingStarted,
    required TResult Function() commentFilteringChanged,
  }) {
    return commentsFetchingStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? commentsFetchingStarted,
    TResult Function()? commentFilteringChanged,
    required TResult orElse(),
  }) {
    if (commentsFetchingStarted != null) {
      return commentsFetchingStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsFetchingStarted value)
        commentsFetchingStarted,
    required TResult Function(_CommentFilteringChanged value)
        commentFilteringChanged,
  }) {
    return commentsFetchingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsFetchingStarted value)? commentsFetchingStarted,
    TResult Function(_CommentFilteringChanged value)? commentFilteringChanged,
    required TResult orElse(),
  }) {
    if (commentsFetchingStarted != null) {
      return commentsFetchingStarted(this);
    }
    return orElse();
  }
}

abstract class _CommentsFetchingStarted implements PostCommentEvent {
  const factory _CommentsFetchingStarted() = _$_CommentsFetchingStarted;
}

/// @nodoc
abstract class _$CommentFilteringChangedCopyWith<$Res> {
  factory _$CommentFilteringChangedCopyWith(_CommentFilteringChanged value,
          $Res Function(_CommentFilteringChanged) then) =
      __$CommentFilteringChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CommentFilteringChangedCopyWithImpl<$Res>
    extends _$PostCommentEventCopyWithImpl<$Res>
    implements _$CommentFilteringChangedCopyWith<$Res> {
  __$CommentFilteringChangedCopyWithImpl(_CommentFilteringChanged _value,
      $Res Function(_CommentFilteringChanged) _then)
      : super(_value, (v) => _then(v as _CommentFilteringChanged));

  @override
  _CommentFilteringChanged get _value =>
      super._value as _CommentFilteringChanged;
}

/// @nodoc

class _$_CommentFilteringChanged implements _CommentFilteringChanged {
  const _$_CommentFilteringChanged();

  @override
  String toString() {
    return 'PostCommentEvent.commentFilteringChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CommentFilteringChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() commentsFetchingStarted,
    required TResult Function() commentFilteringChanged,
  }) {
    return commentFilteringChanged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? commentsFetchingStarted,
    TResult Function()? commentFilteringChanged,
    required TResult orElse(),
  }) {
    if (commentFilteringChanged != null) {
      return commentFilteringChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsFetchingStarted value)
        commentsFetchingStarted,
    required TResult Function(_CommentFilteringChanged value)
        commentFilteringChanged,
  }) {
    return commentFilteringChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsFetchingStarted value)? commentsFetchingStarted,
    TResult Function(_CommentFilteringChanged value)? commentFilteringChanged,
    required TResult orElse(),
  }) {
    if (commentFilteringChanged != null) {
      return commentFilteringChanged(this);
    }
    return orElse();
  }
}

abstract class _CommentFilteringChanged implements PostCommentEvent {
  const factory _CommentFilteringChanged() = _$_CommentFilteringChanged;
}

/// @nodoc
class _$PostCommentStateTearOff {
  const _$PostCommentStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _FetchingCompleted fetchingCompleted(List<CommentData> comments) {
    return _FetchingCompleted(
      comments,
    );
  }

  _FetchingFailed fetchingFailed(ValueFailure<String> failure) {
    return _FetchingFailed(
      failure,
    );
  }
}

/// @nodoc
const $PostCommentState = _$PostCommentStateTearOff();

/// @nodoc
mixin _$PostCommentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CommentData> comments) fetchingCompleted,
    required TResult Function(ValueFailure<String> failure) fetchingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CommentData> comments)? fetchingCompleted,
    TResult Function(ValueFailure<String> failure)? fetchingFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchingCompleted value) fetchingCompleted,
    required TResult Function(_FetchingFailed value) fetchingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchingCompleted value)? fetchingCompleted,
    TResult Function(_FetchingFailed value)? fetchingFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCommentStateCopyWith<$Res> {
  factory $PostCommentStateCopyWith(
          PostCommentState value, $Res Function(PostCommentState) then) =
      _$PostCommentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostCommentStateCopyWithImpl<$Res>
    implements $PostCommentStateCopyWith<$Res> {
  _$PostCommentStateCopyWithImpl(this._value, this._then);

  final PostCommentState _value;
  // ignore: unused_field
  final $Res Function(PostCommentState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PostCommentStateCopyWithImpl<$Res>
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
    return 'PostCommentState.initial()';
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
    required TResult Function(List<CommentData> comments) fetchingCompleted,
    required TResult Function(ValueFailure<String> failure) fetchingFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CommentData> comments)? fetchingCompleted,
    TResult Function(ValueFailure<String> failure)? fetchingFailed,
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
    required TResult Function(_FetchingCompleted value) fetchingCompleted,
    required TResult Function(_FetchingFailed value) fetchingFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchingCompleted value)? fetchingCompleted,
    TResult Function(_FetchingFailed value)? fetchingFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PostCommentState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$PostCommentStateCopyWithImpl<$Res>
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
    return 'PostCommentState.loading()';
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
    required TResult Function(List<CommentData> comments) fetchingCompleted,
    required TResult Function(ValueFailure<String> failure) fetchingFailed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CommentData> comments)? fetchingCompleted,
    TResult Function(ValueFailure<String> failure)? fetchingFailed,
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
    required TResult Function(_FetchingCompleted value) fetchingCompleted,
    required TResult Function(_FetchingFailed value) fetchingFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchingCompleted value)? fetchingCompleted,
    TResult Function(_FetchingFailed value)? fetchingFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PostCommentState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$FetchingCompletedCopyWith<$Res> {
  factory _$FetchingCompletedCopyWith(
          _FetchingCompleted value, $Res Function(_FetchingCompleted) then) =
      __$FetchingCompletedCopyWithImpl<$Res>;
  $Res call({List<CommentData> comments});
}

/// @nodoc
class __$FetchingCompletedCopyWithImpl<$Res>
    extends _$PostCommentStateCopyWithImpl<$Res>
    implements _$FetchingCompletedCopyWith<$Res> {
  __$FetchingCompletedCopyWithImpl(
      _FetchingCompleted _value, $Res Function(_FetchingCompleted) _then)
      : super(_value, (v) => _then(v as _FetchingCompleted));

  @override
  _FetchingCompleted get _value => super._value as _FetchingCompleted;

  @override
  $Res call({
    Object? comments = freezed,
  }) {
    return _then(_FetchingCompleted(
      comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentData>,
    ));
  }
}

/// @nodoc

class _$_FetchingCompleted implements _FetchingCompleted {
  const _$_FetchingCompleted(this.comments);

  @override
  final List<CommentData> comments;

  @override
  String toString() {
    return 'PostCommentState.fetchingCompleted(comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchingCompleted &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(comments);

  @JsonKey(ignore: true)
  @override
  _$FetchingCompletedCopyWith<_FetchingCompleted> get copyWith =>
      __$FetchingCompletedCopyWithImpl<_FetchingCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CommentData> comments) fetchingCompleted,
    required TResult Function(ValueFailure<String> failure) fetchingFailed,
  }) {
    return fetchingCompleted(comments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CommentData> comments)? fetchingCompleted,
    TResult Function(ValueFailure<String> failure)? fetchingFailed,
    required TResult orElse(),
  }) {
    if (fetchingCompleted != null) {
      return fetchingCompleted(comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchingCompleted value) fetchingCompleted,
    required TResult Function(_FetchingFailed value) fetchingFailed,
  }) {
    return fetchingCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchingCompleted value)? fetchingCompleted,
    TResult Function(_FetchingFailed value)? fetchingFailed,
    required TResult orElse(),
  }) {
    if (fetchingCompleted != null) {
      return fetchingCompleted(this);
    }
    return orElse();
  }
}

abstract class _FetchingCompleted implements PostCommentState {
  const factory _FetchingCompleted(List<CommentData> comments) =
      _$_FetchingCompleted;

  List<CommentData> get comments => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchingCompletedCopyWith<_FetchingCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FetchingFailedCopyWith<$Res> {
  factory _$FetchingFailedCopyWith(
          _FetchingFailed value, $Res Function(_FetchingFailed) then) =
      __$FetchingFailedCopyWithImpl<$Res>;
  $Res call({ValueFailure<String> failure});

  $ValueFailureCopyWith<String, $Res> get failure;
}

/// @nodoc
class __$FetchingFailedCopyWithImpl<$Res>
    extends _$PostCommentStateCopyWithImpl<$Res>
    implements _$FetchingFailedCopyWith<$Res> {
  __$FetchingFailedCopyWithImpl(
      _FetchingFailed _value, $Res Function(_FetchingFailed) _then)
      : super(_value, (v) => _then(v as _FetchingFailed));

  @override
  _FetchingFailed get _value => super._value as _FetchingFailed;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_FetchingFailed(
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

class _$_FetchingFailed implements _FetchingFailed {
  const _$_FetchingFailed(this.failure);

  @override
  final ValueFailure<String> failure;

  @override
  String toString() {
    return 'PostCommentState.fetchingFailed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchingFailed &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$FetchingFailedCopyWith<_FetchingFailed> get copyWith =>
      __$FetchingFailedCopyWithImpl<_FetchingFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CommentData> comments) fetchingCompleted,
    required TResult Function(ValueFailure<String> failure) fetchingFailed,
  }) {
    return fetchingFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CommentData> comments)? fetchingCompleted,
    TResult Function(ValueFailure<String> failure)? fetchingFailed,
    required TResult orElse(),
  }) {
    if (fetchingFailed != null) {
      return fetchingFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FetchingCompleted value) fetchingCompleted,
    required TResult Function(_FetchingFailed value) fetchingFailed,
  }) {
    return fetchingFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FetchingCompleted value)? fetchingCompleted,
    TResult Function(_FetchingFailed value)? fetchingFailed,
    required TResult orElse(),
  }) {
    if (fetchingFailed != null) {
      return fetchingFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchingFailed implements PostCommentState {
  const factory _FetchingFailed(ValueFailure<String> failure) =
      _$_FetchingFailed;

  ValueFailure<String> get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchingFailedCopyWith<_FetchingFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
