import 'package:dartz/dartz.dart';

import 'auth_failure.dart';
import 'model/credentials.dart';
import 'model/login_credentials.dart';

abstract class IAuthService {
  Future<Either<AuthFailure, Unit>> loginWithEmail({
    required LoginCredentials credentials,
  });
  Future<Either<AuthFailure, Unit>> signUp({required Credentials credentials});

  Future<Either<AuthFailure, Unit>> loginWithGoogle();
  Future<Either<AuthFailure, Unit>> signUpWithGoogle();

  Future<Either<AuthFailure, Unit>> checkIfUserHasTokens();
  Future<void> logOut();
}
