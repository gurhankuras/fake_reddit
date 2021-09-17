import 'package:dartz/dartz.dart';
import '../core/value_failure.dart';

abstract class IUserRemoteChecker {
  Future<Option<ValueFailure<String>>> email(String email);
  Future<Option<ValueFailure<String>>> username(String username);
}
