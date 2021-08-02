abstract class ISignUpVerificator {
  Future<bool> email(String email);
  Future<bool> username(String username);
}
