// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feed_edit_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FeedEditFailureTearOff {
  const _$FeedEditFailureTearOff();

  _ExceedingLength exceedingLength(
      {required String message, required int maxLength}) {
    return _ExceedingLength(
      message: message,
      maxLength: maxLength,
    );
  }

  _Empty empty({required String message}) {
    return _Empty(
      message: message,
    );
  }
}

/// @nodoc
const $FeedEditFailure = _$FeedEditFailureTearOff();

/// @nodoc
mixin _$FeedEditFailure {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int maxLength) exceedingLength,
    required TResult Function(String message) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int maxLength)? exceedingLength,
    TResult Function(String message)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceedingLength value) exceedingLength,
    required TResult Function(_Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceedingLength value)? exceedingLength,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeedEditFailureCopyWith<FeedEditFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedEditFailureCopyWith<$Res> {
  factory $FeedEditFailureCopyWith(
          FeedEditFailure value, $Res Function(FeedEditFailure) then) =
      _$FeedEditFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FeedEditFailureCopyWithImpl<$Res>
    implements $FeedEditFailureCopyWith<$Res> {
  _$FeedEditFailureCopyWithImpl(this._value, this._then);

  final FeedEditFailure _value;
  // ignore: unused_field
  final $Res Function(FeedEditFailure) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ExceedingLengthCopyWith<$Res>
    implements $FeedEditFailureCopyWith<$Res> {
  factory _$ExceedingLengthCopyWith(
          _ExceedingLength value, $Res Function(_ExceedingLength) then) =
      __$ExceedingLengthCopyWithImpl<$Res>;
  @override
  $Res call({String message, int maxLength});
}

/// @nodoc
class __$ExceedingLengthCopyWithImpl<$Res>
    extends _$FeedEditFailureCopyWithImpl<$Res>
    implements _$ExceedingLengthCopyWith<$Res> {
  __$ExceedingLengthCopyWithImpl(
      _ExceedingLength _value, $Res Function(_ExceedingLength) _then)
      : super(_value, (v) => _then(v as _ExceedingLength));

  @override
  _ExceedingLength get _value => super._value as _ExceedingLength;

  @override
  $Res call({
    Object? message = freezed,
    Object? maxLength = freezed,
  }) {
    return _then(_ExceedingLength(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      maxLength: maxLength == freezed
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ExceedingLength implements _ExceedingLength {
  const _$_ExceedingLength({required this.message, required this.maxLength});

  @override
  final String message;
  @override
  final int maxLength;

  @override
  String toString() {
    return 'FeedEditFailure.exceedingLength(message: $message, maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExceedingLength &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.maxLength, maxLength) ||
                const DeepCollectionEquality()
                    .equals(other.maxLength, maxLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(maxLength);

  @JsonKey(ignore: true)
  @override
  _$ExceedingLengthCopyWith<_ExceedingLength> get copyWith =>
      __$ExceedingLengthCopyWithImpl<_ExceedingLength>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int maxLength) exceedingLength,
    required TResult Function(String message) empty,
  }) {
    return exceedingLength(message, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int maxLength)? exceedingLength,
    TResult Function(String message)? empty,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(message, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceedingLength value) exceedingLength,
    required TResult Function(_Empty value) empty,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceedingLength value)? exceedingLength,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class _ExceedingLength implements FeedEditFailure {
  const factory _ExceedingLength(
      {required String message, required int maxLength}) = _$_ExceedingLength;

  @override
  String get message => throw _privateConstructorUsedError;
  int get maxLength => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExceedingLengthCopyWith<_ExceedingLength> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> implements $FeedEditFailureCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$FeedEditFailureCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Empty(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FeedEditFailure.empty(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Empty &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$EmptyCopyWith<_Empty> get copyWith =>
      __$EmptyCopyWithImpl<_Empty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int maxLength) exceedingLength,
    required TResult Function(String message) empty,
  }) {
    return empty(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int maxLength)? exceedingLength,
    TResult Function(String message)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceedingLength value) exceedingLength,
    required TResult Function(_Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceedingLength value)? exceedingLength,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements FeedEditFailure {
  const factory _Empty({required String message}) = _$_Empty;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmptyCopyWith<_Empty> get copyWith => throw _privateConstructorUsedError;
}
