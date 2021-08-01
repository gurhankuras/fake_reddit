// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  _UserNotExist userNotExist() {
    return const _UserNotExist();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userNotExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNotExist value) userNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNotExist value)? userNotExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class _$UserNotExistCopyWith<$Res> {
  factory _$UserNotExistCopyWith(
          _UserNotExist value, $Res Function(_UserNotExist) then) =
      __$UserNotExistCopyWithImpl<$Res>;
}

/// @nodoc
class __$UserNotExistCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$UserNotExistCopyWith<$Res> {
  __$UserNotExistCopyWithImpl(
      _UserNotExist _value, $Res Function(_UserNotExist) _then)
      : super(_value, (v) => _then(v as _UserNotExist));

  @override
  _UserNotExist get _value => super._value as _UserNotExist;
}

/// @nodoc

class _$_UserNotExist implements _UserNotExist {
  const _$_UserNotExist();

  @override
  String toString() {
    return 'AuthFailure.userNotExist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UserNotExist);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userNotExist,
  }) {
    return userNotExist();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userNotExist,
    required TResult orElse(),
  }) {
    if (userNotExist != null) {
      return userNotExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNotExist value) userNotExist,
  }) {
    return userNotExist(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNotExist value)? userNotExist,
    required TResult orElse(),
  }) {
    if (userNotExist != null) {
      return userNotExist(this);
    }
    return orElse();
  }
}

abstract class _UserNotExist implements AuthFailure {
  const factory _UserNotExist() = _$_UserNotExist;
}
