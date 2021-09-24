import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_clone/utility/log_init.dart';

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
    logInit(SignUpFormBloc);
    registerEventHandlers();
  }

  void registerEventHandlers() {
    on<UsernameChanged>(_onUsernameChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<EmailChanged>(_onEmailChanged);
    on<SignUpPressed>(_onSignUpPressed);
    on<GoogleSignUpPressed>(_onGoogleSignUpPressed);
  }

  FutureOr<void> _onUsernameChanged(
    UsernameChanged event,
    Emitter<SignUpFormState> emit,
  ) async {
    final noneOrFailure = formatValidator.username(event.username);
    noneOrFailure.fold(
      // passed format checked now go to server and check if username already exists
      () async {
        emit(state.copyWith(checkingUsername: true));
        final noneOrVerificationFailure =
            await checker.username(event.username).whenComplete(() {});
        final newState = state.copyWith(
          checkingUsername: false,
          username: event.username,
          usernameFailure: noneOrVerificationFailure,
          failure: formatValidator
              .form(
                emailValue: state.email,
                passwordValue: state.password,
                usernameValue: event.username,
              )
              .orElse(() => noneOrVerificationFailure),
        );
        emit(newState);
      },
      // has format error
      (f) async {
        final newState = state.copyWith(
          username: event.username,
          usernameFailure: noneOrFailure,
          failure: formatValidator.form(
            emailValue: state.email,
            passwordValue: state.password,
            usernameValue: event.username,
          ),
        );
        emit(newState);
      },
    );
  }

  FutureOr<void> _onEmailChanged(
    EmailChanged event,
    Emitter<SignUpFormState> emit,
  ) async {
    final noneOrFailure = formatValidator.email(event.email);
    noneOrFailure.fold(
      // passed format checked now go to server and check if email already exists
      () async {
        emit(state.copyWith(checkingEmail: true));
        final noneOrVerificationFailure = await checker.email(event.email);
        final newState = state.copyWith(
          checkingEmail: false,
          email: event.email,
          emailFailure: noneOrVerificationFailure,
          failure: formatValidator
              .form(
                emailValue: event.email,
                passwordValue: state.password,
                usernameValue: state.username,
              )
              .orElse(() => noneOrVerificationFailure),
        );
        emit(newState);
      },
      // has format error
      (f) async {
        final newState = state.copyWith(
          email: event.email,
          emailFailure: noneOrFailure,
          failure: formatValidator.form(
            emailValue: event.email,
            passwordValue: state.password,
            usernameValue: state.username,
          ),
        );

        emit(newState);
      },
    );
  }

  FutureOr<void> _onPasswordChanged(
    PasswordChanged event,
    Emitter<SignUpFormState> emit,
  ) async {
    final newState = state.copyWith(
      password: event.password,
      passwordFailure: formatValidator.password(event.password),
      failure: formatValidator.form(
        emailValue: state.email,
        passwordValue: event.password,
        usernameValue: state.username,
      ),
    );
    emit(newState);
  }

  FutureOr<void> _onSignUpPressed(
      SignUpPressed event, Emitter<SignUpFormState> emit) async {
    final signUpCreds = Credentials(
      email: state.email,
      password: state.password,
      username: state.username,
    );

    final failureOrSuccess = await authService.signUp(credentials: signUpCreds);

    failureOrSuccess.fold(
      (f) async {
        snackbarService.error(f.message);
        emit(state);
      },
      (_) async {
        final signInOrFailure = await authService.loginWithEmail(
          credentials: LoginCredentials(
            username: signUpCreds.username,
            password: signUpCreds.password,
          ),
        );
        signInOrFailure.fold(
          (f) {
            snackbarService.error(f.message);
            emit(state);
          },
          (_) {
            authBloc.add(const AuthEvent.authCheckRequested());
            emit(state);
          },
        );
      },
    );
  }

  FutureOr<void> _onGoogleSignUpPressed(
    GoogleSignUpPressed event,
    Emitter<SignUpFormState> emit,
  ) async {
    final failureOrSuccess = await authService.signUpWithGoogle();

    failureOrSuccess.fold(
      (l) async {
        emit(state);
      },
      (r) async {
        final signInOrFailure = await authService.loginWithGoogle();
        signInOrFailure.fold(
          (l) => emit(state),
          (r) {
            authBloc.add(const AuthEvent.authCheckRequested());
            emit(state);
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
    // return emailRegex.hasMatch(email)
    // ? none()
    // : ;
  }

  Option<ValueFailure<String>> username(String username) {
    const maxLength = 20;
    const minLength = 3;
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
