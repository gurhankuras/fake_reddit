import 'dart:io';

import 'package:reddit_clone/domain/auth/auth_failure.dart';
import 'package:reddit_clone/domain/core/response_error.dart';

class Failure {
  final String message;
  // final int? code;

  const Failure(
    this.message,
    /*{this.code}*/
  );

  factory Failure.unexpected(String message) => Unexpected(message);

  @override
  String toString() => 'Failure(message: $message)';
}

class BadResponseData extends Failure {
  const BadResponseData(String message) : super(message);
  @override
  String toString() => 'BadResponseData(message: $message)';
}

class InternalServerFailure extends Failure {
  const InternalServerFailure(String message) : super(message);
  @override
  String toString() => 'InternalServerFailure(message: $message)';
}

class Unexpected extends Failure {
  const Unexpected(String message) : super(message);
  @override
  String toString() => 'Unexpected(message: $message)';
}

class ValidationFailure extends Failure {
  const ValidationFailure(String message) : super(message);
  @override
  String toString() => 'ValidationFailure(message: $message)';
}

class AuthFailure extends Failure {
  AuthFailure(
    String message,
    /*{int? code}*/
  ) : super(
          message, /*code: code*/
        );

  factory AuthFailure.userAlreadyExists(String message) =>
      UserAlreadyExists(message);
  factory AuthFailure.emailAlreadyExists(String message) =>
      EmailAlreadyExists(message);
  factory AuthFailure.invalidEmailOrPassword(String message) =>
      InvalidEmailOrPassword(message);
  factory AuthFailure.tokenNotFound(String message) => TokenNotFound(message);
}

class TimeoutFailure extends AuthFailure {
  TimeoutFailure() : super('Timeout');
  @override
  String toString() => 'TimeoutFailure(Timeout)';
}

class UserAlreadyExists extends AuthFailure {
  UserAlreadyExists(String message) : super(message);
  @override
  String toString() => 'UserAlreadyExists(message: $message)';
}

class EmailAlreadyExists extends AuthFailure {
  EmailAlreadyExists(String message) : super(message);
  @override
  String toString() => 'EmailAlreadyExists(message: $message)';
}

class InvalidEmailOrPassword extends AuthFailure {
  InvalidEmailOrPassword(String message) : super(message);
  @override
  String toString() => 'InvalidEmailOrPassword(message: $message)';
}

class TokenNotFound extends AuthFailure {
  TokenNotFound(String message) : super(message);
  @override
  String toString() => 'TokenNotFound(message: $message)';
}
