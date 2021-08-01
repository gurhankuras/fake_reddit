import 'package:reddit_clone/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:reddit_clone/domain/auth/i_auth_service.dart';

class AuthService implements IAuthService {
  @override
  Future<Either<AuthFailure, Unit>> signIn({
    required String email,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 1));

    // return Future.value(left(const AuthFailure.userNotExist()));
    return Future.value(right(unit));
  }

  @override
  void signOut() {}

  @override
  Future<Either<AuthFailure, Unit>> signUp({
    required String email,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 1));

    // return Future.value(left(const AuthFailure.userNotExist()));
    return Future.value(right(unit));
  }
}
