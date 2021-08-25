import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_google_auth_service.dart';

@LazySingleton(as: IGoogleAuthService)
class GoogleAuthService implements IGoogleAuthService {
  final GoogleSignIn googleSignIn;
  GoogleAuthService({required this.googleSignIn});

  @override
  Future<Either<AuthFailure, GoogleSignInAccount>> login() async {
    try {
      final user = await googleSignIn.signIn();
      if (user != null) {
        return right(user);
      }
      return left(const AuthFailure.unexpected());
    } catch (e) {
      return left(const AuthFailure.unexpected());
    }
  }

  @override
  Future<Either<AuthFailure, GoogleSignInAccount>> logOut() async {
    try {
      final user = await googleSignIn.disconnect();
      if (user != null) {
        return right(user);
      }
      return left(const AuthFailure.unexpected());
    } catch (e) {
      return left(const AuthFailure.unexpected());
    }
  }
}
