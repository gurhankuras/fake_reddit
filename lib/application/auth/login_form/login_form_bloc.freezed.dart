// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginFormEventTearOff {
  const _$LoginFormEventTearOff();

  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

  UsernameChanged usernameChanged(String username) {
    return UsernameChanged(
      username,
    );
  }

  LoginPressed loginPressed() {
    return const LoginPressed();
  }

  GoogleLoginPressed googleLoginPressed() {
    return const GoogleLoginPressed();
  }
}

/// @nodoc
const $LoginFormEvent = _$LoginFormEventTearOff();

/// @nodoc
mixin _$LoginFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function() loginPressed,
    required TResult Function() googleLoginPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function()? loginPressed,
    TResult Function()? googleLoginPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(LoginPressed value) loginPressed,
    required TResult Function(GoogleLoginPressed value) googleLoginPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(GoogleLoginPressed value)? googleLoginPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormEventCopyWith<$Res> {
  factory $LoginFormEventCopyWith(
          LoginFormEvent value, $Res Function(LoginFormEvent) then) =
      _$LoginFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginFormEventCopyWithImpl<$Res>
    implements $LoginFormEventCopyWith<$Res> {
  _$LoginFormEventCopyWithImpl(this._value, this._then);

  final LoginFormEvent _value;
  // ignore: unused_field
  final $Res Function(LoginFormEvent) _then;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(PasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'LoginFormEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function() loginPressed,
    required TResult Function() googleLoginPressed,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function()? loginPressed,
    TResult Function()? googleLoginPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(LoginPressed value) loginPressed,
    required TResult Function(GoogleLoginPressed value) googleLoginPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(GoogleLoginPressed value)? googleLoginPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements LoginFormEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsernameChangedCopyWith<$Res> {
  factory $UsernameChangedCopyWith(
          UsernameChanged value, $Res Function(UsernameChanged) then) =
      _$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class _$UsernameChangedCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res>
    implements $UsernameChangedCopyWith<$Res> {
  _$UsernameChangedCopyWithImpl(
      UsernameChanged _value, $Res Function(UsernameChanged) _then)
      : super(_value, (v) => _then(v as UsernameChanged));

  @override
  UsernameChanged get _value => super._value as UsernameChanged;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(UsernameChanged(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsernameChanged implements UsernameChanged {
  const _$UsernameChanged(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'LoginFormEvent.usernameChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsernameChanged &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      _$UsernameChangedCopyWithImpl<UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function() loginPressed,
    required TResult Function() googleLoginPressed,
  }) {
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function()? loginPressed,
    TResult Function()? googleLoginPressed,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(LoginPressed value) loginPressed,
    required TResult Function(GoogleLoginPressed value) googleLoginPressed,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(GoogleLoginPressed value)? googleLoginPressed,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements LoginFormEvent {
  const factory UsernameChanged(String username) = _$UsernameChanged;

  String get username => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPressedCopyWith<$Res> {
  factory $LoginPressedCopyWith(
          LoginPressed value, $Res Function(LoginPressed) then) =
      _$LoginPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginPressedCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res>
    implements $LoginPressedCopyWith<$Res> {
  _$LoginPressedCopyWithImpl(
      LoginPressed _value, $Res Function(LoginPressed) _then)
      : super(_value, (v) => _then(v as LoginPressed));

  @override
  LoginPressed get _value => super._value as LoginPressed;
}

/// @nodoc

class _$LoginPressed implements LoginPressed {
  const _$LoginPressed();

  @override
  String toString() {
    return 'LoginFormEvent.loginPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function() loginPressed,
    required TResult Function() googleLoginPressed,
  }) {
    return loginPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function()? loginPressed,
    TResult Function()? googleLoginPressed,
    required TResult orElse(),
  }) {
    if (loginPressed != null) {
      return loginPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(LoginPressed value) loginPressed,
    required TResult Function(GoogleLoginPressed value) googleLoginPressed,
  }) {
    return loginPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(GoogleLoginPressed value)? googleLoginPressed,
    required TResult orElse(),
  }) {
    if (loginPressed != null) {
      return loginPressed(this);
    }
    return orElse();
  }
}

abstract class LoginPressed implements LoginFormEvent {
  const factory LoginPressed() = _$LoginPressed;
}

/// @nodoc
abstract class $GoogleLoginPressedCopyWith<$Res> {
  factory $GoogleLoginPressedCopyWith(
          GoogleLoginPressed value, $Res Function(GoogleLoginPressed) then) =
      _$GoogleLoginPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$GoogleLoginPressedCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res>
    implements $GoogleLoginPressedCopyWith<$Res> {
  _$GoogleLoginPressedCopyWithImpl(
      GoogleLoginPressed _value, $Res Function(GoogleLoginPressed) _then)
      : super(_value, (v) => _then(v as GoogleLoginPressed));

  @override
  GoogleLoginPressed get _value => super._value as GoogleLoginPressed;
}

/// @nodoc

class _$GoogleLoginPressed implements GoogleLoginPressed {
  const _$GoogleLoginPressed();

  @override
  String toString() {
    return 'LoginFormEvent.googleLoginPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GoogleLoginPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function() loginPressed,
    required TResult Function() googleLoginPressed,
  }) {
    return googleLoginPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function()? loginPressed,
    TResult Function()? googleLoginPressed,
    required TResult orElse(),
  }) {
    if (googleLoginPressed != null) {
      return googleLoginPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(LoginPressed value) loginPressed,
    required TResult Function(GoogleLoginPressed value) googleLoginPressed,
  }) {
    return googleLoginPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(GoogleLoginPressed value)? googleLoginPressed,
    required TResult orElse(),
  }) {
    if (googleLoginPressed != null) {
      return googleLoginPressed(this);
    }
    return orElse();
  }
}

abstract class GoogleLoginPressed implements LoginFormEvent {
  const factory GoogleLoginPressed() = _$GoogleLoginPressed;
}

/// @nodoc
class _$LoginFormStateTearOff {
  const _$LoginFormStateTearOff();

  _LoginFormState call(
      {required String password,
      required String username,
      required bool isSubmitting,
      required Option<ValueFailure<String>> passwordFailure,
      required Option<ValueFailure<String>> usernameFailure,
      required Option<ValueFailure<String>> failure}) {
    return _LoginFormState(
      password: password,
      username: username,
      isSubmitting: isSubmitting,
      passwordFailure: passwordFailure,
      usernameFailure: usernameFailure,
      failure: failure,
    );
  }
}

/// @nodoc
const $LoginFormState = _$LoginFormStateTearOff();

/// @nodoc
mixin _$LoginFormState {
  String get password => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<ValueFailure<String>> get passwordFailure =>
      throw _privateConstructorUsedError;
  Option<ValueFailure<String>> get usernameFailure =>
      throw _privateConstructorUsedError;
  Option<ValueFailure<String>> get failure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginFormStateCopyWith<LoginFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormStateCopyWith<$Res> {
  factory $LoginFormStateCopyWith(
          LoginFormState value, $Res Function(LoginFormState) then) =
      _$LoginFormStateCopyWithImpl<$Res>;
  $Res call(
      {String password,
      String username,
      bool isSubmitting,
      Option<ValueFailure<String>> passwordFailure,
      Option<ValueFailure<String>> usernameFailure,
      Option<ValueFailure<String>> failure});
}

/// @nodoc
class _$LoginFormStateCopyWithImpl<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  _$LoginFormStateCopyWithImpl(this._value, this._then);

  final LoginFormState _value;
  // ignore: unused_field
  final $Res Function(LoginFormState) _then;

  @override
  $Res call({
    Object? password = freezed,
    Object? username = freezed,
    Object? isSubmitting = freezed,
    Object? passwordFailure = freezed,
    Object? usernameFailure = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordFailure: passwordFailure == freezed
          ? _value.passwordFailure
          : passwordFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure<String>>,
      usernameFailure: usernameFailure == freezed
          ? _value.usernameFailure
          : usernameFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure<String>>,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure<String>>,
    ));
  }
}

/// @nodoc
abstract class _$LoginFormStateCopyWith<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  factory _$LoginFormStateCopyWith(
          _LoginFormState value, $Res Function(_LoginFormState) then) =
      __$LoginFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String password,
      String username,
      bool isSubmitting,
      Option<ValueFailure<String>> passwordFailure,
      Option<ValueFailure<String>> usernameFailure,
      Option<ValueFailure<String>> failure});
}

/// @nodoc
class __$LoginFormStateCopyWithImpl<$Res>
    extends _$LoginFormStateCopyWithImpl<$Res>
    implements _$LoginFormStateCopyWith<$Res> {
  __$LoginFormStateCopyWithImpl(
      _LoginFormState _value, $Res Function(_LoginFormState) _then)
      : super(_value, (v) => _then(v as _LoginFormState));

  @override
  _LoginFormState get _value => super._value as _LoginFormState;

  @override
  $Res call({
    Object? password = freezed,
    Object? username = freezed,
    Object? isSubmitting = freezed,
    Object? passwordFailure = freezed,
    Object? usernameFailure = freezed,
    Object? failure = freezed,
  }) {
    return _then(_LoginFormState(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordFailure: passwordFailure == freezed
          ? _value.passwordFailure
          : passwordFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure<String>>,
      usernameFailure: usernameFailure == freezed
          ? _value.usernameFailure
          : usernameFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure<String>>,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure<String>>,
    ));
  }
}

/// @nodoc

class _$_LoginFormState implements _LoginFormState {
  const _$_LoginFormState(
      {required this.password,
      required this.username,
      required this.isSubmitting,
      required this.passwordFailure,
      required this.usernameFailure,
      required this.failure});

  @override
  final String password;
  @override
  final String username;
  @override
  final bool isSubmitting;
  @override
  final Option<ValueFailure<String>> passwordFailure;
  @override
  final Option<ValueFailure<String>> usernameFailure;
  @override
  final Option<ValueFailure<String>> failure;

  @override
  String toString() {
    return 'LoginFormState(password: $password, username: $username, isSubmitting: $isSubmitting, passwordFailure: $passwordFailure, usernameFailure: $usernameFailure, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginFormState &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.passwordFailure, passwordFailure) ||
                const DeepCollectionEquality()
                    .equals(other.passwordFailure, passwordFailure)) &&
            (identical(other.usernameFailure, usernameFailure) ||
                const DeepCollectionEquality()
                    .equals(other.usernameFailure, usernameFailure)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(passwordFailure) ^
      const DeepCollectionEquality().hash(usernameFailure) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LoginFormStateCopyWith<_LoginFormState> get copyWith =>
      __$LoginFormStateCopyWithImpl<_LoginFormState>(this, _$identity);
}

abstract class _LoginFormState implements LoginFormState {
  const factory _LoginFormState(
      {required String password,
      required String username,
      required bool isSubmitting,
      required Option<ValueFailure<String>> passwordFailure,
      required Option<ValueFailure<String>> usernameFailure,
      required Option<ValueFailure<String>> failure}) = _$_LoginFormState;

  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<ValueFailure<String>> get passwordFailure =>
      throw _privateConstructorUsedError;
  @override
  Option<ValueFailure<String>> get usernameFailure =>
      throw _privateConstructorUsedError;
  @override
  Option<ValueFailure<String>> get failure =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginFormStateCopyWith<_LoginFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
