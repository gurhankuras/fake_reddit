import 'package:dartz/dartz.dart';
import 'package:reddit_clone/domain/auth/model/user.dart';
import 'package:reddit_clone/domain/core/failure.dart';

import 'auth_failure.dart';
import 'model/credentials.dart';
import 'model/login_credentials.dart';

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
