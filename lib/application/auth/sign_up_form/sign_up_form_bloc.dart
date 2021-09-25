import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/i_auth_service.dart';
import '../../../domain/auth/i_user_remote_checker.dart';
import '../../../domain/auth/model/credentials.dart';
import '../../../domain/auth/model/login_credentials.dart';
import '../../../domain/core/value_failure.dart';
import '../../../domain/i_snackbar_service.dart';
import '../../../utility/app_logger.dart';
import '../auth_bloc.dart';

part 'sign_up_form_bloc.freezed.dart';
part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';

@Injectable()
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final AuthBloc authBloc;
  final IAuthService authService;
  final IUserRemoteChecker checker;
  final SignUpFormatValidator formatValidator;
  final ISnackbarService snackbarService;

  SignUpFormBloc({
    required this.authBloc,
    required this.authService,
    required this.checker,
    required this.formatValidator,
    required this.snackbarService,
  }) : super(SignUpFormState.initial(formatValidator)) {
    log.v('SignUpFormBloc created!');
  }

  @override
  Stream<SignUpFormState> mapEventToState(
    SignUpFormEvent event,
  ) async* {
    yield* event.map(
      usernameChanged: (e) async* {
        final noneOrFailure = formatValidator.username(e.username);
        yield* noneOrFailure.fold(
          // passed format checked now go to server and check if username already exists
          () async* {
            yield state.copyWith(checkingUsername: true);
            final noneOrVerificationFailure =
                await checker.username(e.username);
            yield state.copyWith(
              checkingUsername: false,
              username: e.username,
              usernameFailure: noneOrVerificationFailure,
              failure: formatValidator
                  .form(
                    emailValue: state.email,
                    passwordValue: state.password,
                    usernameValue: e.username,
                  )
                  .orElse(() => noneOrVerificationFailure),
            );
          },
          // has format error
          (f) async* {
            yield state.copyWith(
              username: e.username,
              usernameFailure: noneOrFailure,
              failure: formatValidator.form(
                emailValue: state.email,
                passwordValue: state.password,
                usernameValue: e.username,
              ),
            );
          },
        );
      },
      emailChanged: (e) async* {
        final noneOrFailure = formatValidator.email(e.email);
        yield* noneOrFailure.fold(
          // passed format checked now go to server and check if email already exists
          () async* {
            yield state.copyWith(checkingEmail: true);
            final noneOrVerificationFailure = await checker.email(e.email);
            yield state.copyWith(
              checkingEmail: false,
              email: e.email,
              emailFailure: noneOrVerificationFailure,
              failure: formatValidator
                  .form(
                    emailValue: e.email,
                    passwordValue: state.password,
                    usernameValue: state.username,
                  )
                  .orElse(() => noneOrVerificationFailure),
            );
          },
          // has format error
          (f) async* {
            yield state.copyWith(
              email: e.email,
              emailFailure: noneOrFailure,
              failure: formatValidator.form(
                emailValue: e.email,
                passwordValue: state.password,
                usernameValue: state.username,
              ),
            );
          },
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: e.password,
          passwordFailure: formatValidator.password(e.password),
          failure: formatValidator.form(
            emailValue: state.email,
            passwordValue: e.password,
            usernameValue: state.username,
          ),
        );
      },
      signInPressed: (e) async* {
        // yield state.copyWith(isSubmitting: true);

        final signUpCreds = Credentials(
          email: state.email,
          password: state.password,
          username: state.username,
        );
        final failureOrSuccess = await authService.signUp(
          credentials: signUpCreds,
        );

        yield* failureOrSuccess.fold(
          (f) async* {
            snackbarService.error(f.message);
            // yield state.copyWith(isSubmitting: false);
            yield state;
          },
          (r) async* {
            final signInOrFailure = await authService.loginWithEmail(
              credentials: LoginCredentials(
                username: signUpCreds.username,
                password: signUpCreds.password,
              ),
            );
            yield* signInOrFailure.fold(
              (f) async* {
                snackbarService.error(f.message);
                yield state;
              },
              (r) async* {
                authBloc.add(const AuthEvent.authCheckRequested());
                yield state;
              },
            );
          },
        );
      },
      googleSignUpPressed: (e) async* {
        // yield state.copyWith(isSubmitting: true);

        final failureOrSuccess = await authService.signUpWithGoogle();

        yield* failureOrSuccess.fold(
          (l) async* {
            yield state;
          },
          (r) async* {
            final signInOrFailure = await authService.loginWithGoogle();
            yield* signInOrFailure.fold(
              (l) async* {
                yield state;
              },
              (r) async* {
                authBloc.add(const AuthEvent.authCheckRequested());
                yield state;
              },
            );
          },
        );
      },
    );
  }
}

@LazySingleton()
class SignUpFormatValidator {
  Option<ValueFailure<String>> password(String password) {
    const minLength = 6;
    return option(
      password.length < minLength,
      ValueFailure.shortLength(failedValue: password, min: minLength),
    );
  }

  final emailRegex = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$");

  Option<ValueFailure<String>> email(String email) {
    return option(
      !emailRegex.hasMatch(email),
      ValueFailure.invalidFormat(failedValue: email),
    );
  }

  Option<ValueFailure<String>> username(String username) {
    const maxLength = 20;
    const minLength = 6;
    if (username.length > maxLength) {
      return some(
          ValueFailure.exceedingLength(failedValue: username, max: maxLength));
    } else if (username.length < minLength) {
      return some(
          ValueFailure.shortLength(failedValue: username, min: minLength));
    }
    return none();
  }

  Option<ValueFailure<String>> form(
      {required String emailValue,
      required String passwordValue,
      required String usernameValue}) {
    return email(emailValue)
        .orElse(() => password(passwordValue))
        .orElse(() => username(usernameValue));
  }
}
