part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormEvent with _$SignUpFormEvent {
  const factory SignUpFormEvent.passwordChanged(String password) =
      PasswordChanged;
  const factory SignUpFormEvent.usernameChanged(String username) =
      UsernameChanged;
  const factory SignUpFormEvent.emailChanged(String email) = EmailChanged;
  const factory SignUpFormEvent.signInPressed() = SignUpPressed;

  const factory SignUpFormEvent.googleSignUpPressed() = GoogleSignUpPressed;
}
