part of 'login_form_bloc.dart';

@freezed
class LoginFormEvent with _$LoginFormEvent {
  const factory LoginFormEvent.passwordChanged(String password) =
      PasswordChanged;
  const factory LoginFormEvent.usernameChanged(String username) =
      UsernameChanged;
  const factory LoginFormEvent.loginPressed() = LoginPressed;
  const factory LoginFormEvent.googleLoginPressed() = GoogleLoginPressed;
}
