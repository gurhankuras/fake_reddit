import 'package:dartz/dartz.dart';
import 'package:reddit_clone/domain/auth/auth_failure.dart';

abstract class IAuthService {
  Future<Either<AuthFailure, Unit>> signIn({
    required String email,
    required String password,
  });
  void signOut();
  Future<Either<AuthFailure, Unit>> signUp({
    required String email,
    required String password,
  });
}
