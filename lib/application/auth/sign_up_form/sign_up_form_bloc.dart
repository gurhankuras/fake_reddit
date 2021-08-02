import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:reddit_clone/domain/auth/i_sign_up_verificator.dart';
import 'package:reddit_clone/domain/value_failure.dart';
import 'package:reddit_clone/utility/app_logger.dart';

import '../auth_bloc.dart';

part 'sign_up_form_bloc.freezed.dart';
part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';

class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final AuthBloc authBloc;
  final ISignUpVerificator verificator;
  SignUpFormBloc({
    required this.authBloc,
    required this.verificator,
  }) : super(SignUpFormState.initial()) {
    log.v('SignUpFormBloc created!');
  }

  @override
  Stream<SignUpFormState> mapEventToState(
    SignUpFormEvent event,
  ) async* {
    yield* event.map(
      usernameChanged: (e) async* {
        yield state.copyWith(
          username: e.username,
          usernameFailure: validateUsername(e.username),
          failure: validateForm(
            email: state.email,
            password: state.password,
            username: e.username,
          ),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          email: e.email,
          emailFailure: validateEmail(e.email),
          failure: validateForm(
            email: e.email,
            password: state.password,
            username: state.username,
          ),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: e.password,
          passwordFailure: validatePassword(e.password),
          failure: validateForm(
            email: state.email,
            password: e.password,
            username: state.username,
          ),
        );
      },
      signInPressed: (e) async* {
        yield state.copyWith(isSubmitting: true);
        await Future.delayed(Duration(seconds: 3));
        yield state.copyWith(isSubmitting: false);
      },
    );
  }
}

Option<ValueFailure<String>> validatePassword(String password) {
  const minLength = 6;
  return option(
    password.length < minLength,
    ValueFailure.shortLength(failedValue: password, min: minLength),
  );
}

final emailRegex = RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$");

Option<ValueFailure<String>> validateEmail(String email) {
  return option(
    !emailRegex.hasMatch(email),
    ValueFailure.invalidFormat(failedValue: email),
  );
  // return emailRegex.hasMatch(email)
  // ? none()
  // : ;
}

Option<ValueFailure<String>> validateUsername(String username) {
  const maxLength = 20;
  return option(
    username.length > maxLength,
    ValueFailure.exceedingLength(failedValue: username, max: maxLength),
  );
}

Option<ValueFailure<String>> validateForm(
    {required String email,
    required String password,
    required String username}) {
  return validateEmail(email)
      .orElse(() => validatePassword(password))
      .orElse(() => validateUsername(username));
}
