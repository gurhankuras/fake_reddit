import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:reddit_clone/domain/auth/i_auth_service.dart';
import 'package:reddit_clone/domain/auth/model/credentials.dart';
import 'package:reddit_clone/domain/core/value_failure.dart';
import 'package:reddit_clone/infastructure/auth/auth_service.dart';
import 'package:reddit_clone/infastructure/auth/i_sign_up_verificator.dart';
import 'package:reddit_clone/utility/app_logger.dart';

import '../auth_bloc.dart';

part 'sign_up_form_bloc.freezed.dart';
part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';

@Injectable()
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final AuthBloc authBloc;
  final IAuthService authService;
  final ISignUpVerificator verificator;
  final SignUpFormatValidator formatValidator;

  SignUpFormBloc({
    required this.authBloc,
    required this.authService,
    required this.verificator,
    required this.formatValidator,
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
                await verificator.username(e.username);
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
            final noneOrVerificationFailure = await verificator.email(e.email);
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
        yield state.copyWith(isSubmitting: true);
        final failureOrSuccess = await authService.signUp(
          credentials: Credentials(
            email: state.email,
            password: state.password,
            username: state.username,
          ),
        );
        yield* failureOrSuccess.fold(
          (l) async* {
            yield state.copyWith(isSubmitting: false);
          },
          (r) async* {
            authBloc.add(const AuthEvent.gotUserSignedIn());
            yield state.copyWith(isSubmitting: false);
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

// abstract class IPredicate {
//   Option<ValueFailure<String>> test(String value);
// }

// class MinimumCharacters implements IPredicate {
//   final int minLength;
//   const MinimumCharacters(this.minLength);
//   @override
//   Option<ValueFailure<String>> test(String value) {
//     return option(
//       value.length < minLength,
//       ValueFailure.shortLength(failedValue: value, min: minLength),
//     );
//   }
// }

// class FormatValidator {
//   Option<ValueFailure<String>> validate(String value, IPredicate pred) {
//     return pred.test(value);
//   }
// }

// class ValidatorObject {
//   final Option<ValueFailure<String>> valueOrFailure;
//   final String value;

//   const ValidatorObject(this.value, this.valueOrFailure);

//   ValidatorObject min(int n) {
//     if (valueOrFailure.isSome()) {
//       this;
//     }
//     return ValidatorObject(
//         value,
//         valueOrFailure.orElse(() => option(
//               value.length < n,
//               ValueFailure.shortLength(failedValue: value, min: n),
//             )));
//   }

//   ValidatorObject max(int n) {
//     if (valueOrFailure.isSome()) {
//       this;
//     }
//     return ValidatorObject(
//         value,
//         valueOrFailure.orElse(() => option(
//               value.length > n,
//               ValueFailure.exceedingLength(failedValue: value, max: n),
//             )));
//   }

//   Option<ValueFailure<String>> get() {
//     return valueOrFailure;
//   }
// }
