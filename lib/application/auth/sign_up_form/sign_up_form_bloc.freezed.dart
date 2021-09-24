// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpFormEventTearOff {
  const _$SignUpFormEventTearOff();

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

  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

  SignUpPressed signInPressed() {
    return const SignUpPressed();
  }

  GoogleSignUpPressed googleSignUpPressed() {
    return const GoogleSignUpPressed();
  }
}

/// @nodoc
const $SignUpFormEvent = _$SignUpFormEventTearOff();

/// @nodoc
mixin _$SignUpFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function() signInPressed,
    required TResult Function() googleSignUpPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? signInPressed,
    TResult Function()? googleSignUpPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(SignUpPressed value) signInPressed,
    required TResult Function(GoogleSignUpPressed value) googleSignUpPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SignUpPressed value)? signInPressed,
    TResult Function(GoogleSignUpPressed value)? googleSignUpPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormEventCopyWith<$Res> {
  factory $SignUpFormEventCopyWith(
          SignUpFormEvent value, $Res Function(SignUpFormEvent) then) =
      _$SignUpFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpFormEventCopyWithImpl<$Res>
    implements $SignUpFormEventCopyWith<$Res> {
  _$SignUpFormEventCopyWithImpl(this._value, this._then);

  final SignUpFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpFormEvent) _then;
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
    extends _$SignUpFormEventCopyWithImpl<$Res>
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
    return 'SignUpFormEvent.passwordChanged(password: $password)';
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
    required TResult Function(String email) emailChanged,
    required TResult Function() signInPressed,
    required TResult Function() googleSignUpPressed,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? signInPressed,
    TResult Function()? googleSignUpPressed,
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
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(SignUpPressed value) signInPressed,
    required TResult Function(GoogleSignUpPressed value) googleSignUpPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SignUpPressed value)? signInPressed,
    TResult Function(GoogleSignUpPressed value)? googleSignUpPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignUpFormEvent {
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
    extends _$SignUpFormEventCopyWithImpl<$Res>
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
    return 'SignUpFormEvent.usernameChanged(username: $username)';
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
    required TResult Function(String email) emailChanged,
    required TResult Function() signInPressed,
    required TResult Function() googleSignUpPressed,
  }) {
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? signInPressed,
    TResult Function()? googleSignUpPressed,
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
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(SignUpPressed value) signInPressed,
    required TResult Function(GoogleSignUpPressed value) googleSignUpPressed,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SignUpPressed value)? signInPressed,
    TResult Function(GoogleSignUpPressed value)? googleSignUpPressed,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements SignUpFormEvent {
  const factory UsernameChanged(String username) = _$UsernameChanged;

  String get username => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'SignUpFormEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function() signInPressed,
    required TResult Function() googleSignUpPressed,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? signInPressed,
    TResult Function()? googleSignUpPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(SignUpPressed value) signInPressed,
    required TResult Function(GoogleSignUpPressed value) googleSignUpPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SignUpPressed value)? signInPressed,
    TResult Function(GoogleSignUpPressed value)? googleSignUpPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignUpFormEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpPressedCopyWith<$Res> {
  factory $SignUpPressedCopyWith(
          SignUpPressed value, $Res Function(SignUpPressed) then) =
      _$SignUpPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpPressedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $SignUpPressedCopyWith<$Res> {
  _$SignUpPressedCopyWithImpl(
      SignUpPressed _value, $Res Function(SignUpPressed) _then)
      : super(_value, (v) => _then(v as SignUpPressed));

  @override
  SignUpPressed get _value => super._value as SignUpPressed;
}

/// @nodoc

class _$SignUpPressed implements SignUpPressed {
  const _$SignUpPressed();

  @override
  String toString() {
    return 'SignUpFormEvent.signInPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignUpPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function() signInPressed,
    required TResult Function() googleSignUpPressed,
  }) {
    return signInPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? signInPressed,
    TResult Function()? googleSignUpPressed,
    required TResult orElse(),
  }) {
    if (signInPressed != null) {
      return signInPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(SignUpPressed value) signInPressed,
    required TResult Function(GoogleSignUpPressed value) googleSignUpPressed,
  }) {
    return signInPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SignUpPressed value)? signInPressed,
    TResult Function(GoogleSignUpPressed value)? googleSignUpPressed,
    required TResult orElse(),
  }) {
    if (signInPressed != null) {
      return signInPressed(this);
    }
    return orElse();
  }
}

abstract class SignUpPressed implements SignUpFormEvent {
  const factory SignUpPressed() = _$SignUpPressed;
}

/// @nodoc
abstract class $GoogleSignUpPressedCopyWith<$Res> {
  factory $GoogleSignUpPressedCopyWith(
          GoogleSignUpPressed value, $Res Function(GoogleSignUpPressed) then) =
      _$GoogleSignUpPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$GoogleSignUpPressedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $GoogleSignUpPressedCopyWith<$Res> {
  _$GoogleSignUpPressedCopyWithImpl(
      GoogleSignUpPressed _value, $Res Function(GoogleSignUpPressed) _then)
      : super(_value, (v) => _then(v as GoogleSignUpPressed));

  @override
  GoogleSignUpPressed get _value => super._value as GoogleSignUpPressed;
}

/// @nodoc

class _$GoogleSignUpPressed implements GoogleSignUpPressed {
  const _$GoogleSignUpPressed();

  @override
  String toString() {
    return 'SignUpFormEvent.googleSignUpPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GoogleSignUpPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password) passwordChanged,
    required TResult Function(String username) usernameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function() signInPressed,
    required TResult Function() googleSignUpPressed,
  }) {
    return googleSignUpPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password)? passwordChanged,
    TResult Function(String username)? usernameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function()? signInPressed,
    TResult Function()? googleSignUpPressed,
    required TResult orElse(),
  }) {
    if (googleSignUpPressed != null) {
      return googleSignUpPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(SignUpPressed value) signInPressed,
    required TResult Function(GoogleSignUpPressed value) googleSignUpPressed,
  }) {
    return googleSignUpPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SignUpPressed value)? signInPressed,
    TResult Function(GoogleSignUpPressed value)? googleSignUpPressed,
    required TResult orElse(),
  }) {
    if (googleSignUpPressed != null) {
      return googleSignUpPressed(this);
    }
    return orElse();
  }
}

abstract class GoogleSignUpPressed implements SignUpFormEvent {
  const factory GoogleSignUpPressed() = _$GoogleSignUpPressed;
}

/// @nodoc
class _$SignUpFormStateTearOff {
  const _$SignUpFormStateTearOff();

  _SignUpFormState call(
      {required String email,
      required String password,
      required String username,
      required bool checkingEmail,
      required bool checkingUsername,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<ValueFailure<String>> emailFailure,
      required Option<ValueFailure<String>> passwordFailure,
      required Option<ValueFailure<String>> usernameFailure,
      required Option<ValueFailure<String>> failure}) {
    return _SignUpFormState(
      email: email,
      password: password,
      username: username,
      checkingEmail: checkingEmail,
      checkingUsername: checkingUsername,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      emailFailure: emailFailure,
      passwordFailure: passwordFailure,
      usernameFailure: usernameFailure,
      failure: failure,
    );
  }
}

/// @nodoc
const $SignUpFormState = _$SignUpFormStateTearOff();

/// @nodoc
mixin _$SignUpFormState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  bool get checkingEmail => throw _privateConstructorUsedError;
  bool get checkingUsername => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<ValueFailure<String>> get emailFailure =>
      throw _privateConstructorUsedError;
  Option<ValueFailure<String>> get passwordFailure =>
      throw _privateConstructorUsedError;
  Option<ValueFailure<String>> get usernameFailure =>
      throw _privateConstructorUsedError;
  Option<ValueFailure<String>> get failure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpFormStateCopyWith<SignUpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormStateCopyWith<$Res> {
  factory $SignUpFormStateCopyWith(
          SignUpFormState value, $Res Function(SignUpFormState) then) =
      _$SignUpFormStateCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String password,
      String username,
      bool checkingEmail,
      bool checkingUsername,
      bool showErrorMessages,
      bool isSubmitting,
      Option<ValueFailure<String>> emailFailure,
      Option<ValueFailure<String>> passwordFailure,
      Option<ValueFailure<String>> usernameFailure,
      Option<ValueFailure<String>> failure});
}

/// @nodoc
class _$SignUpFormStateCopyWithImpl<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  _$SignUpFormStateCopyWithImpl(this._value, this._then);

  final SignUpFormState _value;
  // ignore: unused_field
  final $Res Function(SignUpFormState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? username = freezed,
    Object? checkingEmail = freezed,
    Object? checkingUsername = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? emailFailure = freezed,
    Object? passwordFailure = freezed,
    Object? usernameFailure = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      checkingEmail: checkingEmail == freezed
          ? _value.checkingEmail
          : checkingEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      checkingUsername: checkingUsername == freezed
          ? _value.checkingUsername
          : checkingUsername // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      emailFailure: emailFailure == freezed
          ? _value.emailFailure
          : emailFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure<String>>,
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
abstract class _$SignUpFormStateCopyWith<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  factory _$SignUpFormStateCopyWith(
          _SignUpFormState value, $Res Function(_SignUpFormState) then) =
      __$SignUpFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String password,
      String username,
      bool checkingEmail,
      bool checkingUsername,
      bool showErrorMessages,
      bool isSubmitting,
      Option<ValueFailure<String>> emailFailure,
      Option<ValueFailure<String>> passwordFailure,
      Option<ValueFailure<String>> usernameFailure,
      Option<ValueFailure<String>> failure});
}

/// @nodoc
class __$SignUpFormStateCopyWithImpl<$Res>
    extends _$SignUpFormStateCopyWithImpl<$Res>
    implements _$SignUpFormStateCopyWith<$Res> {
  __$SignUpFormStateCopyWithImpl(
      _SignUpFormState _value, $Res Function(_SignUpFormState) _then)
      : super(_value, (v) => _then(v as _SignUpFormState));

  @override
  _SignUpFormState get _value => super._value as _SignUpFormState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? username = freezed,
    Object? checkingEmail = freezed,
    Object? checkingUsername = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? emailFailure = freezed,
    Object? passwordFailure = freezed,
    Object? usernameFailure = freezed,
    Object? failure = freezed,
  }) {
    return _then(_SignUpFormState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      checkingEmail: checkingEmail == freezed
          ? _value.checkingEmail
          : checkingEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      checkingUsername: checkingUsername == freezed
          ? _value.checkingUsername
          : checkingUsername // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      emailFailure: emailFailure == freezed
          ? _value.emailFailure
          : emailFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure<String>>,
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

class _$_SignUpFormState implements _SignUpFormState {
  const _$_SignUpFormState(
      {required this.email,
      required this.password,
      required this.username,
      required this.checkingEmail,
      required this.checkingUsername,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.emailFailure,
      required this.passwordFailure,
      required this.usernameFailure,
      required this.failure});

  @override
  final String email;
  @override
  final String password;
  @override
  final String username;
  @override
  final bool checkingEmail;
  @override
  final bool checkingUsername;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<ValueFailure<String>> emailFailure;
  @override
  final Option<ValueFailure<String>> passwordFailure;
  @override
  final Option<ValueFailure<String>> usernameFailure;
  @override
  final Option<ValueFailure<String>> failure;

  @override
  String toString() {
    return 'SignUpFormState(email: $email, password: $password, username: $username, checkingEmail: $checkingEmail, checkingUsername: $checkingUsername, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, emailFailure: $emailFailure, passwordFailure: $passwordFailure, usernameFailure: $usernameFailure, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpFormState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.checkingEmail, checkingEmail) ||
                const DeepCollectionEquality()
                    .equals(other.checkingEmail, checkingEmail)) &&
            (identical(other.checkingUsername, checkingUsername) ||
                const DeepCollectionEquality()
                    .equals(other.checkingUsername, checkingUsername)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.emailFailure, emailFailure) ||
                const DeepCollectionEquality()
                    .equals(other.emailFailure, emailFailure)) &&
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
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(checkingEmail) ^
      const DeepCollectionEquality().hash(checkingUsername) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(emailFailure) ^
      const DeepCollectionEquality().hash(passwordFailure) ^
      const DeepCollectionEquality().hash(usernameFailure) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$SignUpFormStateCopyWith<_SignUpFormState> get copyWith =>
      __$SignUpFormStateCopyWithImpl<_SignUpFormState>(this, _$identity);
}

abstract class _SignUpFormState implements SignUpFormState {
  const factory _SignUpFormState(
      {required String email,
      required String password,
      required String username,
      required bool checkingEmail,
      required bool checkingUsername,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<ValueFailure<String>> emailFailure,
      required Option<ValueFailure<String>> passwordFailure,
      required Option<ValueFailure<String>> usernameFailure,
      required Option<ValueFailure<String>> failure}) = _$_SignUpFormState;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  bool get checkingEmail => throw _privateConstructorUsedError;
  @override
  bool get checkingUsername => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<ValueFailure<String>> get emailFailure =>
      throw _privateConstructorUsedError;
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
  _$SignUpFormStateCopyWith<_SignUpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
