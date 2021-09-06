part of './auth_service.dart';

/// [Endpoints.login]
Failure makeFailureLogin(int statusCode, ResponseError error) {
  switch (statusCode) {
    case HttpStatus.badRequest:
      return ValidationFailure(error.message);
    case HttpStatus.notFound:
      return AuthFailure.invalidEmailOrPassword(error.message);
    default:
      return Unexpected(error.message);
  }
}

/// [Endpoints.register]
Failure makeFailureRegister(int statusCode, ResponseError error) {
  switch (statusCode) {
    case HttpStatus.badRequest:
      return ValidationFailure(error.message);
    case HttpStatus.notFound:
      return AuthFailure.userAlreadyExists(error.message);
    case HttpStatus.internalServerError:
      return InternalServerFailure('Server error');
    default:
      return Unexpected(error.message);
  }
}

/// [Endpoints.protected]
Failure makeProtectedFailure(int status, ResponseError responseError) =>
    status == HttpStatus.forbidden
        ? AuthFailure.tokenNotFound(responseError.message)
        : Unexpected(responseError.message);
