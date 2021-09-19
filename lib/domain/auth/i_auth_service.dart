import 'package:dartz/dartz.dart';

import '../core/failure.dart';
import 'model/credentials.dart';
import 'model/login_credentials.dart';
import 'model/user.dart';

abstract class IAuthService {
  Future<Either<Failure, Unit>> loginWithEmail({
    required LoginCredentials credentials,
  });
  Future<Either<Failure, Unit>> signUp({required Credentials credentials});

  Future<Either<Failure, Unit>> loginWithGoogle();
  Future<Either<Failure, Unit>> signUpWithGoogle();

  Future<Either<Failure, User>> getCurrentUser();
  Future<void> logOut();
}
