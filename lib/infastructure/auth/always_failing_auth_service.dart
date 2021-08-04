import 'package:reddit_clone/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:reddit_clone/domain/auth/i_auth_service.dart';
import 'package:reddit_clone/domain/auth/model/credentials.dart';

class AlwaysFailingAuthService implements IAuthService {
  @override
  Future<Either<AuthFailure, Unit>> signIn({
    required Credentials credentials,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    return Future.value(left(const AuthFailure.userNotExist()));
  }

  @override
  void signOut() {}

  @override
  Future<Either<AuthFailure, Unit>> signUp({
    required Credentials credentials,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    return Future.value(left(const AuthFailure.userNotExist()));
  }

  @override
  Future<Either<AuthFailure, Unit>> checkIfUserHasTokens() async {
    await Future.delayed(const Duration(seconds: 1));
    return Future.value(left(const AuthFailure.userNotExist()));
  }

  @override
  Future<void> logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }
}
