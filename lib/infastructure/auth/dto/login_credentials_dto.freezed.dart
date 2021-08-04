// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_credentials_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginCredentialsDTO _$LoginCredentialsDTOFromJson(Map<String, dynamic> json) {
  return _LoginCredentialsDTO.fromJson(json);
}

/// @nodoc
class _$LoginCredentialsDTOTearOff {
  const _$LoginCredentialsDTOTearOff();

  _LoginCredentialsDTO call({String? password, String? username}) {
    return _LoginCredentialsDTO(
      password: password,
      username: username,
    );
  }

  LoginCredentialsDTO fromJson(Map<String, Object> json) {
    return LoginCredentialsDTO.fromJson(json);
  }
}

/// @nodoc
const $LoginCredentialsDTO = _$LoginCredentialsDTOTearOff();

/// @nodoc
mixin _$LoginCredentialsDTO {
  String? get password => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginCredentialsDTOCopyWith<LoginCredentialsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCredentialsDTOCopyWith<$Res> {
  factory $LoginCredentialsDTOCopyWith(
          LoginCredentialsDTO value, $Res Function(LoginCredentialsDTO) then) =
      _$LoginCredentialsDTOCopyWithImpl<$Res>;
  $Res call({String? password, String? username});
}

/// @nodoc
class _$LoginCredentialsDTOCopyWithImpl<$Res>
    implements $LoginCredentialsDTOCopyWith<$Res> {
  _$LoginCredentialsDTOCopyWithImpl(this._value, this._then);

  final LoginCredentialsDTO _value;
  // ignore: unused_field
  final $Res Function(LoginCredentialsDTO) _then;

  @override
  $Res call({
    Object? password = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LoginCredentialsDTOCopyWith<$Res>
    implements $LoginCredentialsDTOCopyWith<$Res> {
  factory _$LoginCredentialsDTOCopyWith(_LoginCredentialsDTO value,
          $Res Function(_LoginCredentialsDTO) then) =
      __$LoginCredentialsDTOCopyWithImpl<$Res>;
  @override
  $Res call({String? password, String? username});
}

/// @nodoc
class __$LoginCredentialsDTOCopyWithImpl<$Res>
    extends _$LoginCredentialsDTOCopyWithImpl<$Res>
    implements _$LoginCredentialsDTOCopyWith<$Res> {
  __$LoginCredentialsDTOCopyWithImpl(
      _LoginCredentialsDTO _value, $Res Function(_LoginCredentialsDTO) _then)
      : super(_value, (v) => _then(v as _LoginCredentialsDTO));

  @override
  _LoginCredentialsDTO get _value => super._value as _LoginCredentialsDTO;

  @override
  $Res call({
    Object? password = freezed,
    Object? username = freezed,
  }) {
    return _then(_LoginCredentialsDTO(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginCredentialsDTO extends _LoginCredentialsDTO {
  _$_LoginCredentialsDTO({this.password, this.username}) : super._();

  factory _$_LoginCredentialsDTO.fromJson(Map<String, dynamic> json) =>
      _$$_LoginCredentialsDTOFromJson(json);

  @override
  final String? password;
  @override
  final String? username;

  @override
  String toString() {
    return 'LoginCredentialsDTO(password: $password, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginCredentialsDTO &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$LoginCredentialsDTOCopyWith<_LoginCredentialsDTO> get copyWith =>
      __$LoginCredentialsDTOCopyWithImpl<_LoginCredentialsDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginCredentialsDTOToJson(this);
  }
}

abstract class _LoginCredentialsDTO extends LoginCredentialsDTO {
  factory _LoginCredentialsDTO({String? password, String? username}) =
      _$_LoginCredentialsDTO;
  _LoginCredentialsDTO._() : super._();

  factory _LoginCredentialsDTO.fromJson(Map<String, dynamic> json) =
      _$_LoginCredentialsDTO.fromJson;

  @override
  String? get password => throw _privateConstructorUsedError;
  @override
  String? get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginCredentialsDTOCopyWith<_LoginCredentialsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
