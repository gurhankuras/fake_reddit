import 'package:reddit_clone/domain/auth/i_sign_up_verificator.dart';

class SignUpVerificator implements ISignUpVerificator {
  @override
  Future<bool> email(String email) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Future.value(true);
  }

  @override
  Future<bool> username(String username) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Future.value(true);
  }
}
