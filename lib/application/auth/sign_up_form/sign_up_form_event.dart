part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormEvent with _$SignUpFormEvent {
  const factory SignUpFormEvent.passwordChanged(String password) =
      _PasswordChanged;
  const factory SignUpFormEvent.usernameChanged(String username) =
      _UsernameChanged;
  const factory SignUpFormEvent.emailChanged(String email) = _EmailChanged;
  const factory SignUpFormEvent.signInPressed() = _SignUpPressed;

  const factory SignUpFormEvent.googleSignUpPressed() = _GoogleSignUpPressed;
}
