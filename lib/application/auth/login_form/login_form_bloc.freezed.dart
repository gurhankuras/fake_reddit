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

  _PasswordChanged passwordChanged(String password) {
    return _PasswordChanged(
      password,
    );
  }

  _UsernameChanged usernameChanged(String username) {
    return _UsernameChanged(
      username,
    );
  }

  _LoginPressed loginPressed() {
    return const _LoginPressed();
  }

  _GoogleLoginPressed googleLoginPressed() {
    return const _GoogleLoginPressed();
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
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_LoginPressed value) loginPressed,
    required TResult Function(_GoogleLoginPressed value) googleLoginPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_LoginPressed value)? loginPressed,
    TResult Function(_GoogleLoginPressed value)? googleLoginPressed,
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
abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(
      _PasswordChanged _value, $Res Function(_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_PasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'LoginFormEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

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
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_LoginPressed value) loginPressed,
    required TResult Function(_GoogleLoginPressed value) googleLoginPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_LoginPressed value)? loginPressed,
    TResult Function(_GoogleLoginPressed value)? googleLoginPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements LoginFormEvent {
  const factory _PasswordChanged(String password) = _$_PasswordChanged;

  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UsernameChangedCopyWith<$Res> {
  factory _$UsernameChangedCopyWith(
          _UsernameChanged value, $Res Function(_UsernameChanged) then) =
      __$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$UsernameChangedCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res>
    implements _$UsernameChangedCopyWith<$Res> {
  __$UsernameChangedCopyWithImpl(
      _UsernameChanged _value, $Res Function(_UsernameChanged) _then)
      : super(_value, (v) => _then(v as _UsernameChanged));

  @override
  _UsernameChanged get _value => super._value as _UsernameChanged;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_UsernameChanged(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UsernameChanged implements _UsernameChanged {
  const _$_UsernameChanged(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'LoginFormEvent.usernameChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsernameChanged &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith =>
      __$UsernameChangedCopyWithImpl<_UsernameChanged>(this, _$identity);

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
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_LoginPressed value) loginPressed,
    required TResult Function(_GoogleLoginPressed value) googleLoginPressed,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_LoginPressed value)? loginPressed,
    TResult Function(_GoogleLoginPressed value)? googleLoginPressed,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements LoginFormEvent {
  const factory _UsernameChanged(String username) = _$_UsernameChanged;

  String get username => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoginPressedCopyWith<$Res> {
  factory _$LoginPressedCopyWith(
          _LoginPressed value, $Res Function(_LoginPressed) then) =
      __$LoginPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginPressedCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res>
    implements _$LoginPressedCopyWith<$Res> {
  __$LoginPressedCopyWithImpl(
      _LoginPressed _value, $Res Function(_LoginPressed) _then)
      : super(_value, (v) => _then(v as _LoginPressed));

  @override
  _LoginPressed get _value => super._value as _LoginPressed;
}

/// @nodoc

class _$_LoginPressed implements _LoginPressed {
  const _$_LoginPressed();

  @override
  String toString() {
    return 'LoginFormEvent.loginPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoginPressed);
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
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_LoginPressed value) loginPressed,
    required TResult Function(_GoogleLoginPressed value) googleLoginPressed,
  }) {
    return loginPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_LoginPressed value)? loginPressed,
    TResult Function(_GoogleLoginPressed value)? googleLoginPressed,
    required TResult orElse(),
  }) {
    if (loginPressed != null) {
      return loginPressed(this);
    }
    return orElse();
  }
}

abstract class _LoginPressed implements LoginFormEvent {
  const factory _LoginPressed() = _$_LoginPressed;
}

/// @nodoc
abstract class _$GoogleLoginPressedCopyWith<$Res> {
  factory _$GoogleLoginPressedCopyWith(
          _GoogleLoginPressed value, $Res Function(_GoogleLoginPressed) then) =
      __$GoogleLoginPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$GoogleLoginPressedCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res>
    implements _$GoogleLoginPressedCopyWith<$Res> {
  __$GoogleLoginPressedCopyWithImpl(
      _GoogleLoginPressed _value, $Res Function(_GoogleLoginPressed) _then)
      : super(_value, (v) => _then(v as _GoogleLoginPressed));

  @override
  _GoogleLoginPressed get _value => super._value as _GoogleLoginPressed;
}

/// @nodoc

class _$_GoogleLoginPressed implements _GoogleLoginPressed {
  const _$_GoogleLoginPressed();

  @override
  String toString() {
    return 'LoginFormEvent.googleLoginPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GoogleLoginPressed);
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
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_LoginPressed value) loginPressed,
    required TResult Function(_GoogleLoginPressed value) googleLoginPressed,
  }) {
    return googleLoginPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_LoginPressed value)? loginPressed,
    TResult Function(_GoogleLoginPressed value)? googleLoginPressed,
    required TResult orElse(),
  }) {
    if (googleLoginPressed != null) {
      return googleLoginPressed(this);
    }
    return orElse();
  }
}

abstract class _GoogleLoginPressed implements LoginFormEvent {
  const factory _GoogleLoginPressed() = _$_GoogleLoginPressed;
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
