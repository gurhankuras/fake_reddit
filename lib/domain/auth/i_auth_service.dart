import 'package:dartz/dartz.dart';
import 'package:reddit_clone/domain/auth/model/credentials.dart';

import 'auth_failure.dart';

abstract class IAuthService {
  Future<Either<AuthFailure, Unit>> signIn({
    required Credentials credentials,
  });
  Future<Either<AuthFailure, Unit>> signUp({
    required Credentials credentials,
  });
  Future<Either<AuthFailure, Unit>> checkIfUserHasTokens();
  Future<void> logOut();
}
