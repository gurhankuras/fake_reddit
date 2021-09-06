import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:reddit_clone/domain/core/constants/endpoints.dart';

import '../../infastructure/auth/i_user_remote_checker.dart';
import '../../injection.dart';
import '../core/value_failure.dart';

// UserRemoteChecker
@LazySingleton(as: IUserRemoteChecker)
class UserRemoteChecker implements IUserRemoteChecker {
  @override
  Future<Option<ValueFailure<String>>> email(String email) async {
    return _checkAvailability('email', email);
    // await Future.delayed(const Duration(milliseconds: 500));
    // return Future.value(none());
  }

  @override
  Future<Option<ValueFailure<String>>> username(String username) async {
    return _checkAvailability('username', username);

    // await Future.delayed(const Duration(milliseconds: 500));
    // return Future.value(none());
  }

  Future<Option<ValueFailure<String>>> _checkAvailability(
      String field, String value) async {
    try {
      final response = await getIt<Dio>().get(
        Endpoints.register_availability,
        queryParameters: {field: value},
      );
      final available = response.data as bool;
      if (available) {
        return none();
      }
      return some(ValueFailure.emailTaken(failedValue: ''));
    } catch (e) {
      return some(ValueFailure.emailTaken(failedValue: ''));
    }
  }
}
