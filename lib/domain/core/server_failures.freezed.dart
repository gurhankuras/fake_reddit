// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'server_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ServerFailureTearOff {
  const _$ServerFailureTearOff();

  _Unexpected unexpected() {
    return const _Unexpected();
  }

  _UnexpectedResponseType unexpectedResponseType() {
    return const _UnexpectedResponseType();
  }

  _BadStatus badStatus(int statusCode) {
    return _BadStatus(
      statusCode,
    );
  }

  _HasNoConnection hasNoConnection() {
    return const _HasNoConnection();
  }
}

/// @nodoc
const $ServerFailure = _$ServerFailureTearOff();

/// @nodoc
mixin _$ServerFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() unexpectedResponseType,
    required TResult Function(int statusCode) badStatus,
    required TResult Function() hasNoConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? unexpectedResponseType,
    TResult Function(int statusCode)? badStatus,
    TResult Function()? hasNoConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UnexpectedResponseType value)
        unexpectedResponseType,
    required TResult Function(_BadStatus value) badStatus,
    required TResult Function(_HasNoConnection value) hasNoConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UnexpectedResponseType value)? unexpectedResponseType,
    TResult Function(_BadStatus value)? badStatus,
    TResult Function(_HasNoConnection value)? hasNoConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerFailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) then) =
      _$ServerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerFailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(this._value, this._then);

  final ServerFailure _value;
  // ignore: unused_field
  final $Res Function(ServerFailure) _then;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res> extends _$ServerFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'ServerFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() unexpectedResponseType,
    required TResult Function(int statusCode) badStatus,
    required TResult Function() hasNoConnection,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? unexpectedResponseType,
    TResult Function(int statusCode)? badStatus,
    TResult Function()? hasNoConnection,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UnexpectedResponseType value)
        unexpectedResponseType,
    required TResult Function(_BadStatus value) badStatus,
    required TResult Function(_HasNoConnection value) hasNoConnection,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UnexpectedResponseType value)? unexpectedResponseType,
    TResult Function(_BadStatus value)? badStatus,
    TResult Function(_HasNoConnection value)? hasNoConnection,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements ServerFailure {
  const factory _Unexpected() = _$_Unexpected;
}

/// @nodoc
abstract class _$UnexpectedResponseTypeCopyWith<$Res> {
  factory _$UnexpectedResponseTypeCopyWith(_UnexpectedResponseType value,
          $Res Function(_UnexpectedResponseType) then) =
      __$UnexpectedResponseTypeCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedResponseTypeCopyWithImpl<$Res>
    extends _$ServerFailureCopyWithImpl<$Res>
    implements _$UnexpectedResponseTypeCopyWith<$Res> {
  __$UnexpectedResponseTypeCopyWithImpl(_UnexpectedResponseType _value,
      $Res Function(_UnexpectedResponseType) _then)
      : super(_value, (v) => _then(v as _UnexpectedResponseType));

  @override
  _UnexpectedResponseType get _value => super._value as _UnexpectedResponseType;
}

/// @nodoc

class _$_UnexpectedResponseType implements _UnexpectedResponseType {
  const _$_UnexpectedResponseType();

  @override
  String toString() {
    return 'ServerFailure.unexpectedResponseType()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnexpectedResponseType);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() unexpectedResponseType,
    required TResult Function(int statusCode) badStatus,
    required TResult Function() hasNoConnection,
  }) {
    return unexpectedResponseType();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? unexpectedResponseType,
    TResult Function(int statusCode)? badStatus,
    TResult Function()? hasNoConnection,
    required TResult orElse(),
  }) {
    if (unexpectedResponseType != null) {
      return unexpectedResponseType();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UnexpectedResponseType value)
        unexpectedResponseType,
    required TResult Function(_BadStatus value) badStatus,
    required TResult Function(_HasNoConnection value) hasNoConnection,
  }) {
    return unexpectedResponseType(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UnexpectedResponseType value)? unexpectedResponseType,
    TResult Function(_BadStatus value)? badStatus,
    TResult Function(_HasNoConnection value)? hasNoConnection,
    required TResult orElse(),
  }) {
    if (unexpectedResponseType != null) {
      return unexpectedResponseType(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedResponseType implements ServerFailure {
  const factory _UnexpectedResponseType() = _$_UnexpectedResponseType;
}

/// @nodoc
abstract class _$BadStatusCopyWith<$Res> {
  factory _$BadStatusCopyWith(
          _BadStatus value, $Res Function(_BadStatus) then) =
      __$BadStatusCopyWithImpl<$Res>;
  $Res call({int statusCode});
}

/// @nodoc
class __$BadStatusCopyWithImpl<$Res> extends _$ServerFailureCopyWithImpl<$Res>
    implements _$BadStatusCopyWith<$Res> {
  __$BadStatusCopyWithImpl(_BadStatus _value, $Res Function(_BadStatus) _then)
      : super(_value, (v) => _then(v as _BadStatus));

  @override
  _BadStatus get _value => super._value as _BadStatus;

  @override
  $Res call({
    Object? statusCode = freezed,
  }) {
    return _then(_BadStatus(
      statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BadStatus implements _BadStatus {
  const _$_BadStatus(this.statusCode);

  @override
  final int statusCode;

  @override
  String toString() {
    return 'ServerFailure.badStatus(statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BadStatus &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(statusCode);

  @JsonKey(ignore: true)
  @override
  _$BadStatusCopyWith<_BadStatus> get copyWith =>
      __$BadStatusCopyWithImpl<_BadStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() unexpectedResponseType,
    required TResult Function(int statusCode) badStatus,
    required TResult Function() hasNoConnection,
  }) {
    return badStatus(statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? unexpectedResponseType,
    TResult Function(int statusCode)? badStatus,
    TResult Function()? hasNoConnection,
    required TResult orElse(),
  }) {
    if (badStatus != null) {
      return badStatus(statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UnexpectedResponseType value)
        unexpectedResponseType,
    required TResult Function(_BadStatus value) badStatus,
    required TResult Function(_HasNoConnection value) hasNoConnection,
  }) {
    return badStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UnexpectedResponseType value)? unexpectedResponseType,
    TResult Function(_BadStatus value)? badStatus,
    TResult Function(_HasNoConnection value)? hasNoConnection,
    required TResult orElse(),
  }) {
    if (badStatus != null) {
      return badStatus(this);
    }
    return orElse();
  }
}

abstract class _BadStatus implements ServerFailure {
  const factory _BadStatus(int statusCode) = _$_BadStatus;

  int get statusCode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BadStatusCopyWith<_BadStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HasNoConnectionCopyWith<$Res> {
  factory _$HasNoConnectionCopyWith(
          _HasNoConnection value, $Res Function(_HasNoConnection) then) =
      __$HasNoConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$HasNoConnectionCopyWithImpl<$Res>
    extends _$ServerFailureCopyWithImpl<$Res>
    implements _$HasNoConnectionCopyWith<$Res> {
  __$HasNoConnectionCopyWithImpl(
      _HasNoConnection _value, $Res Function(_HasNoConnection) _then)
      : super(_value, (v) => _then(v as _HasNoConnection));

  @override
  _HasNoConnection get _value => super._value as _HasNoConnection;
}

/// @nodoc

class _$_HasNoConnection implements _HasNoConnection {
  const _$_HasNoConnection();

  @override
  String toString() {
    return 'ServerFailure.hasNoConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _HasNoConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() unexpectedResponseType,
    required TResult Function(int statusCode) badStatus,
    required TResult Function() hasNoConnection,
  }) {
    return hasNoConnection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? unexpectedResponseType,
    TResult Function(int statusCode)? badStatus,
    TResult Function()? hasNoConnection,
    required TResult orElse(),
  }) {
    if (hasNoConnection != null) {
      return hasNoConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UnexpectedResponseType value)
        unexpectedResponseType,
    required TResult Function(_BadStatus value) badStatus,
    required TResult Function(_HasNoConnection value) hasNoConnection,
  }) {
    return hasNoConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UnexpectedResponseType value)? unexpectedResponseType,
    TResult Function(_BadStatus value)? badStatus,
    TResult Function(_HasNoConnection value)? hasNoConnection,
    required TResult orElse(),
  }) {
    if (hasNoConnection != null) {
      return hasNoConnection(this);
    }
    return orElse();
  }
}

abstract class _HasNoConnection implements ServerFailure {
  const factory _HasNoConnection() = _$_HasNoConnection;
}
