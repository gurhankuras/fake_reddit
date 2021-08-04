part of 'login_form_bloc.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    required String password,
    required String username,
    required bool isSubmitting,
    required Option<ValueFailure<String>> passwordFailure,
    required Option<ValueFailure<String>> usernameFailure,
    required Option<ValueFailure<String>> failure,
  }) = _LoginFormState;

  factory LoginFormState.initial() => LoginFormState(
        password: '',
        username: '',
        isSubmitting: false,
        usernameFailure: some(ValueFailure.empty(failedValue: '')),
        passwordFailure: some(ValueFailure.empty(failedValue: '')),
        failure: some(ValueFailure.empty(failedValue: '')),
      );
}
