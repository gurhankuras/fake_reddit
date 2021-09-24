// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vote_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VoteEventTearOff {
  const _$VoteEventTearOff();

  Upvoted upvoted() {
    return const Upvoted();
  }

  Downvoted downvoted() {
    return const Downvoted();
  }
}

/// @nodoc
const $VoteEvent = _$VoteEventTearOff();

/// @nodoc
mixin _$VoteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() upvoted,
    required TResult Function() downvoted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? upvoted,
    TResult Function()? downvoted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Upvoted value) upvoted,
    required TResult Function(Downvoted value) downvoted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Upvoted value)? upvoted,
    TResult Function(Downvoted value)? downvoted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoteEventCopyWith<$Res> {
  factory $VoteEventCopyWith(VoteEvent value, $Res Function(VoteEvent) then) =
      _$VoteEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VoteEventCopyWithImpl<$Res> implements $VoteEventCopyWith<$Res> {
  _$VoteEventCopyWithImpl(this._value, this._then);

  final VoteEvent _value;
  // ignore: unused_field
  final $Res Function(VoteEvent) _then;
}

/// @nodoc
abstract class $UpvotedCopyWith<$Res> {
  factory $UpvotedCopyWith(Upvoted value, $Res Function(Upvoted) then) =
      _$UpvotedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpvotedCopyWithImpl<$Res> extends _$VoteEventCopyWithImpl<$Res>
    implements $UpvotedCopyWith<$Res> {
  _$UpvotedCopyWithImpl(Upvoted _value, $Res Function(Upvoted) _then)
      : super(_value, (v) => _then(v as Upvoted));

  @override
  Upvoted get _value => super._value as Upvoted;
}

/// @nodoc

class _$Upvoted implements Upvoted {
  const _$Upvoted();

  @override
  String toString() {
    return 'VoteEvent.upvoted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Upvoted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() upvoted,
    required TResult Function() downvoted,
  }) {
    return upvoted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? upvoted,
    TResult Function()? downvoted,
    required TResult orElse(),
  }) {
    if (upvoted != null) {
      return upvoted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Upvoted value) upvoted,
    required TResult Function(Downvoted value) downvoted,
  }) {
    return upvoted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Upvoted value)? upvoted,
    TResult Function(Downvoted value)? downvoted,
    required TResult orElse(),
  }) {
    if (upvoted != null) {
      return upvoted(this);
    }
    return orElse();
  }
}

abstract class Upvoted implements VoteEvent {
  const factory Upvoted() = _$Upvoted;
}

/// @nodoc
abstract class $DownvotedCopyWith<$Res> {
  factory $DownvotedCopyWith(Downvoted value, $Res Function(Downvoted) then) =
      _$DownvotedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DownvotedCopyWithImpl<$Res> extends _$VoteEventCopyWithImpl<$Res>
    implements $DownvotedCopyWith<$Res> {
  _$DownvotedCopyWithImpl(Downvoted _value, $Res Function(Downvoted) _then)
      : super(_value, (v) => _then(v as Downvoted));

  @override
  Downvoted get _value => super._value as Downvoted;
}

/// @nodoc

class _$Downvoted implements Downvoted {
  const _$Downvoted();

  @override
  String toString() {
    return 'VoteEvent.downvoted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Downvoted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() upvoted,
    required TResult Function() downvoted,
  }) {
    return downvoted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? upvoted,
    TResult Function()? downvoted,
    required TResult orElse(),
  }) {
    if (downvoted != null) {
      return downvoted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Upvoted value) upvoted,
    required TResult Function(Downvoted value) downvoted,
  }) {
    return downvoted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Upvoted value)? upvoted,
    TResult Function(Downvoted value)? downvoted,
    required TResult orElse(),
  }) {
    if (downvoted != null) {
      return downvoted(this);
    }
    return orElse();
  }
}

abstract class Downvoted implements VoteEvent {
  const factory Downvoted() = _$Downvoted;
}

/// @nodoc
class _$VoteStateTearOff {
  const _$VoteStateTearOff();

  _UnvotedState unvoted(int? upvotes) {
    return _UnvotedState(
      upvotes,
    );
  }

  _DownvotedState downvoted(int? upvotes) {
    return _DownvotedState(
      upvotes,
    );
  }

  _UpvotedState upvoted(int? upvotes) {
    return _UpvotedState(
      upvotes,
    );
  }
}

/// @nodoc
const $VoteState = _$VoteStateTearOff();

/// @nodoc
mixin _$VoteState {
  int? get upvotes => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? upvotes) unvoted,
    required TResult Function(int? upvotes) downvoted,
    required TResult Function(int? upvotes) upvoted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? upvotes)? unvoted,
    TResult Function(int? upvotes)? downvoted,
    TResult Function(int? upvotes)? upvoted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnvotedState value) unvoted,
    required TResult Function(_DownvotedState value) downvoted,
    required TResult Function(_UpvotedState value) upvoted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnvotedState value)? unvoted,
    TResult Function(_DownvotedState value)? downvoted,
    TResult Function(_UpvotedState value)? upvoted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VoteStateCopyWith<VoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoteStateCopyWith<$Res> {
  factory $VoteStateCopyWith(VoteState value, $Res Function(VoteState) then) =
      _$VoteStateCopyWithImpl<$Res>;
  $Res call({int? upvotes});
}

/// @nodoc
class _$VoteStateCopyWithImpl<$Res> implements $VoteStateCopyWith<$Res> {
  _$VoteStateCopyWithImpl(this._value, this._then);

  final VoteState _value;
  // ignore: unused_field
  final $Res Function(VoteState) _then;

  @override
  $Res call({
    Object? upvotes = freezed,
  }) {
    return _then(_value.copyWith(
      upvotes: upvotes == freezed
          ? _value.upvotes
          : upvotes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$UnvotedStateCopyWith<$Res>
    implements $VoteStateCopyWith<$Res> {
  factory _$UnvotedStateCopyWith(
          _UnvotedState value, $Res Function(_UnvotedState) then) =
      __$UnvotedStateCopyWithImpl<$Res>;
  @override
  $Res call({int? upvotes});
}

/// @nodoc
class __$UnvotedStateCopyWithImpl<$Res> extends _$VoteStateCopyWithImpl<$Res>
    implements _$UnvotedStateCopyWith<$Res> {
  __$UnvotedStateCopyWithImpl(
      _UnvotedState _value, $Res Function(_UnvotedState) _then)
      : super(_value, (v) => _then(v as _UnvotedState));

  @override
  _UnvotedState get _value => super._value as _UnvotedState;

  @override
  $Res call({
    Object? upvotes = freezed,
  }) {
    return _then(_UnvotedState(
      upvotes == freezed
          ? _value.upvotes
          : upvotes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_UnvotedState implements _UnvotedState {
  const _$_UnvotedState(this.upvotes);

  @override
  final int? upvotes;

  @override
  String toString() {
    return 'VoteState.unvoted(upvotes: $upvotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnvotedState &&
            (identical(other.upvotes, upvotes) ||
                const DeepCollectionEquality().equals(other.upvotes, upvotes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(upvotes);

  @JsonKey(ignore: true)
  @override
  _$UnvotedStateCopyWith<_UnvotedState> get copyWith =>
      __$UnvotedStateCopyWithImpl<_UnvotedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? upvotes) unvoted,
    required TResult Function(int? upvotes) downvoted,
    required TResult Function(int? upvotes) upvoted,
  }) {
    return unvoted(upvotes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? upvotes)? unvoted,
    TResult Function(int? upvotes)? downvoted,
    TResult Function(int? upvotes)? upvoted,
    required TResult orElse(),
  }) {
    if (unvoted != null) {
      return unvoted(upvotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnvotedState value) unvoted,
    required TResult Function(_DownvotedState value) downvoted,
    required TResult Function(_UpvotedState value) upvoted,
  }) {
    return unvoted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnvotedState value)? unvoted,
    TResult Function(_DownvotedState value)? downvoted,
    TResult Function(_UpvotedState value)? upvoted,
    required TResult orElse(),
  }) {
    if (unvoted != null) {
      return unvoted(this);
    }
    return orElse();
  }
}

abstract class _UnvotedState implements VoteState {
  const factory _UnvotedState(int? upvotes) = _$_UnvotedState;

  @override
  int? get upvotes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UnvotedStateCopyWith<_UnvotedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DownvotedStateCopyWith<$Res>
    implements $VoteStateCopyWith<$Res> {
  factory _$DownvotedStateCopyWith(
          _DownvotedState value, $Res Function(_DownvotedState) then) =
      __$DownvotedStateCopyWithImpl<$Res>;
  @override
  $Res call({int? upvotes});
}

/// @nodoc
class __$DownvotedStateCopyWithImpl<$Res> extends _$VoteStateCopyWithImpl<$Res>
    implements _$DownvotedStateCopyWith<$Res> {
  __$DownvotedStateCopyWithImpl(
      _DownvotedState _value, $Res Function(_DownvotedState) _then)
      : super(_value, (v) => _then(v as _DownvotedState));

  @override
  _DownvotedState get _value => super._value as _DownvotedState;

  @override
  $Res call({
    Object? upvotes = freezed,
  }) {
    return _then(_DownvotedState(
      upvotes == freezed
          ? _value.upvotes
          : upvotes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_DownvotedState implements _DownvotedState {
  const _$_DownvotedState(this.upvotes);

  @override
  final int? upvotes;

  @override
  String toString() {
    return 'VoteState.downvoted(upvotes: $upvotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DownvotedState &&
            (identical(other.upvotes, upvotes) ||
                const DeepCollectionEquality().equals(other.upvotes, upvotes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(upvotes);

  @JsonKey(ignore: true)
  @override
  _$DownvotedStateCopyWith<_DownvotedState> get copyWith =>
      __$DownvotedStateCopyWithImpl<_DownvotedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? upvotes) unvoted,
    required TResult Function(int? upvotes) downvoted,
    required TResult Function(int? upvotes) upvoted,
  }) {
    return downvoted(upvotes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? upvotes)? unvoted,
    TResult Function(int? upvotes)? downvoted,
    TResult Function(int? upvotes)? upvoted,
    required TResult orElse(),
  }) {
    if (downvoted != null) {
      return downvoted(upvotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnvotedState value) unvoted,
    required TResult Function(_DownvotedState value) downvoted,
    required TResult Function(_UpvotedState value) upvoted,
  }) {
    return downvoted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnvotedState value)? unvoted,
    TResult Function(_DownvotedState value)? downvoted,
    TResult Function(_UpvotedState value)? upvoted,
    required TResult orElse(),
  }) {
    if (downvoted != null) {
      return downvoted(this);
    }
    return orElse();
  }
}

abstract class _DownvotedState implements VoteState {
  const factory _DownvotedState(int? upvotes) = _$_DownvotedState;

  @override
  int? get upvotes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DownvotedStateCopyWith<_DownvotedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpvotedStateCopyWith<$Res>
    implements $VoteStateCopyWith<$Res> {
  factory _$UpvotedStateCopyWith(
          _UpvotedState value, $Res Function(_UpvotedState) then) =
      __$UpvotedStateCopyWithImpl<$Res>;
  @override
  $Res call({int? upvotes});
}

/// @nodoc
class __$UpvotedStateCopyWithImpl<$Res> extends _$VoteStateCopyWithImpl<$Res>
    implements _$UpvotedStateCopyWith<$Res> {
  __$UpvotedStateCopyWithImpl(
      _UpvotedState _value, $Res Function(_UpvotedState) _then)
      : super(_value, (v) => _then(v as _UpvotedState));

  @override
  _UpvotedState get _value => super._value as _UpvotedState;

  @override
  $Res call({
    Object? upvotes = freezed,
  }) {
    return _then(_UpvotedState(
      upvotes == freezed
          ? _value.upvotes
          : upvotes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_UpvotedState implements _UpvotedState {
  const _$_UpvotedState(this.upvotes);

  @override
  final int? upvotes;

  @override
  String toString() {
    return 'VoteState.upvoted(upvotes: $upvotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpvotedState &&
            (identical(other.upvotes, upvotes) ||
                const DeepCollectionEquality().equals(other.upvotes, upvotes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(upvotes);

  @JsonKey(ignore: true)
  @override
  _$UpvotedStateCopyWith<_UpvotedState> get copyWith =>
      __$UpvotedStateCopyWithImpl<_UpvotedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? upvotes) unvoted,
    required TResult Function(int? upvotes) downvoted,
    required TResult Function(int? upvotes) upvoted,
  }) {
    return upvoted(upvotes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? upvotes)? unvoted,
    TResult Function(int? upvotes)? downvoted,
    TResult Function(int? upvotes)? upvoted,
    required TResult orElse(),
  }) {
    if (upvoted != null) {
      return upvoted(upvotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnvotedState value) unvoted,
    required TResult Function(_DownvotedState value) downvoted,
    required TResult Function(_UpvotedState value) upvoted,
  }) {
    return upvoted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnvotedState value)? unvoted,
    TResult Function(_DownvotedState value)? downvoted,
    TResult Function(_UpvotedState value)? upvoted,
    required TResult orElse(),
  }) {
    if (upvoted != null) {
      return upvoted(this);
    }
    return orElse();
  }
}

abstract class _UpvotedState implements VoteState {
  const factory _UpvotedState(int? upvotes) = _$_UpvotedState;

  @override
  int? get upvotes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpvotedStateCopyWith<_UpvotedState> get copyWith =>
      throw _privateConstructorUsedError;
}
