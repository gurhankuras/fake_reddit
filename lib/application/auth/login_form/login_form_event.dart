part of 'login_form_bloc.dart';

@freezed
class LoginFormEvent with _$LoginFormEvent {
  const factory LoginFormEvent.passwordChanged(String password) =
      _PasswordChanged;
  const factory LoginFormEvent.usernameChanged(String username) =
      _UsernameChanged;
  const factory LoginFormEvent.loginPressed() = _LoginPressed;
}
