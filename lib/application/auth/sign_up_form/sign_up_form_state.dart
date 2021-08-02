part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    required String email,
    required String password,
    required String username,
    required bool checkingEmail,
    required bool checkingUsername,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<ValueFailure<String>> emailFailure,
    required Option<ValueFailure<String>> passwordFailure,
    required Option<ValueFailure<String>> usernameFailure,
    required Option<ValueFailure<String>> failure,
  }) = _SignUpFormState;

  factory SignUpFormState.initial(SignUpFormatValidator formatValidator) =>
      SignUpFormState(
        email: '',
        password: '',
        username: '',
        showErrorMessages: false,
        isSubmitting: false,
        emailFailure: formatValidator.email(''),
        usernameFailure: formatValidator.username(''),
        passwordFailure: formatValidator.password(''),
        checkingEmail: false,
        checkingUsername: false,
        failure: formatValidator.form(
            emailValue: '', passwordValue: '', usernameValue: ''),
      );
}
