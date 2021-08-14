import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../core/value_failure.dart';
import '../../infastructure/auth/i_sign_up_verificator.dart';

@LazySingleton()
class SignUpVerificator implements ISignUpVerificator {
  @override
  Future<Option<ValueFailure<String>>> email(String email) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Future.value(none());
  }

  @override
  Future<Option<ValueFailure<String>>> username(String username) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Future.value(none());
  }
}