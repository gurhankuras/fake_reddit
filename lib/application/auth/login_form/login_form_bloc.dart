import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/i_snackbar_service.dart';

import '../../../domain/auth/i_auth_service.dart';
import '../../../domain/auth/model/login_credentials.dart';
import '../../../domain/core/value_failure.dart';
import '../../../utility/app_logger.dart';
import '../auth_bloc.dart';

part 'login_form_bloc.freezed.dart';
part 'login_form_event.dart';
part 'login_form_state.dart';

@Injectable()
class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final AuthBloc authBloc;
  final IAuthService authService;
  final ISnackbarService snackService;
  LoginFormBloc({
    required this.authBloc,
    required this.authService,
    required this.snackService,
  }) : super(LoginFormState.initial()) {
    log.v('LoginFormBloc created!');
  }

  @override
  Stream<LoginFormState> mapEventToState(
    LoginFormEvent event,
  ) async* {
    yield* event.map(
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: e.password,
          passwordFailure: option(
              e.password.isEmpty, ValueFailure.empty(failedValue: e.password)),
          failure: option(e.password.isEmpty,
                  ValueFailure.empty(failedValue: e.password))
              .orElse(() => option(state.username.isEmpty,
                  ValueFailure.empty(failedValue: state.username))),
        );
      },
      usernameChanged: (e) async* {
        yield state.copyWith(
          username: e.username,
          usernameFailure: option(
              e.username.isEmpty, ValueFailure.empty(failedValue: e.username)),
          failure: option(e.username.isEmpty,
                  ValueFailure.empty(failedValue: e.username))
              .orElse(() => option(state.password.isEmpty,
                  ValueFailure.empty(failedValue: state.password))),
        );
      },
      loginPressed: (e) async* {
        yield state.copyWith(isSubmitting: true);
        final failureOrSuccess = await authService.loginWithEmail(
          credentials: LoginCredentials(
            username: state.username,
            password: state.password,
          ),
        );

        yield* failureOrSuccess.fold(
          (failure) async* {
            snackService.show(
                message: failure.message, indicatorColor: Colors.red);
            print('FAILED');
            print(failure);
            yield state.copyWith(isSubmitting: false);
          },
          (r) async* {
            print('SUCCEED');
            authBloc.add(const AuthEvent.authCheckRequested());
            yield state.copyWith(isSubmitting: false);
          },
        );
      },
      googleLoginPressed: (e) async* {
        // yield state.copyWith(isSubmitting: true);

        final userOrFailure = await authService.loginWithGoogle();
        yield* userOrFailure.fold(
          (failure) async* {
            yield state /*.copyWith(isSubmitting: false)*/;
          },
          (user) async* {
            authBloc.add(const AuthEvent.authCheckRequested());
            yield state /*.copyWith(isSubmitting: false)*/;
          },
        );
      },
    );
  }
}
