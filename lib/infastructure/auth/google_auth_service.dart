import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/i_google_auth_service.dart';
import '../../domain/core/failure.dart';

@LazySingleton(as: IGoogleAuthService)
class GoogleAuthService implements IGoogleAuthService {
  final GoogleSignIn googleSignIn;
  GoogleAuthService({required this.googleSignIn});

  @override
  Future<Either<Failure, GoogleSignInAccount>> login() async {
    try {
      final user = await googleSignIn.signIn();
      if (user != null) {
        return right(user);
      }
      return left(Failure.unexpected(''));
    } catch (e) {
      return left(Failure.unexpected(''));
    }
  }

  @override
  Future<Either<Failure, GoogleSignInAccount>> logOut() async {
    try {
      final user = await googleSignIn.disconnect();
      if (user != null) {
        return right(user);
      }
      return left(Failure.unexpected(''));
    } catch (e) {
      return left(Failure.unexpected(''));
    }
  }
}
