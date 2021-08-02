import 'package:dartz/dartz.dart';
import 'package:reddit_clone/domain/value_failure.dart';

abstract class ISignUpVerificator {
  Future<Option<ValueFailure<String>>> email(String email);
  Future<Option<ValueFailure<String>>> username(String username);
}
