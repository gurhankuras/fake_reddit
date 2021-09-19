import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../core/failure.dart';

abstract class IGoogleAuthService {
  Future<Either<Failure, GoogleSignInAccount>> login();
  Future<Either<Failure, GoogleSignInAccount>> logOut();
}
