import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'auth_failure.dart';

abstract class IGoogleAuthService {
  Future<Either<AuthFailure, GoogleSignInAccount>> login();
  Future<Either<AuthFailure, GoogleSignInAccount>> logOut();
}
