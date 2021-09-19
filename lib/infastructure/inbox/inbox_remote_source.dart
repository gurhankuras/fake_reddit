import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failure.dart';
import '../../domain/inbox/activity.dart';
import '../../domain/inbox/inbox_message.dart';
import '../../injection.dart';
import '../core/dio_error_handler.dart';
import '../core/token_dio_interceptor.dart';

@LazySingleton()
class InboxRemoteSource {
  final Dio dio;

  InboxRemoteSource(this.dio) {
    dio.interceptors.add(getIt<TokenDioInterceptor>());
  }

// TODO refactor functions
  Future<Either<Failure, Unit>> deleteActivity(String id) async {
    try {
      await dio.delete(
        'http://10.0.2.2:4000/api/me/inbox/activities',
        data: {'activityId': id},
      );
      return right(unit);
    } catch (e) {
      final f = makeRemoteFailure(e, (statusCode, error) {
        switch (statusCode) {
          case HttpStatus.unprocessableEntity:
            return ValidationFailure('validation failure');
          case HttpStatus.badRequest:
            return Failure('couldnt delete. Try again later');
          case HttpStatus.internalServerError:
            return Failure('server failure');
          default:
            return Unexpected('unexpected failure');
        }
      });
      return left(f);
    }
  }

  Future<Either<Failure, List<Activity>>> getActivities() async {
    try {
      final response =
          await dio.get('http://10.0.2.2:4000/api/me/inbox/activities');
      final data = response.data;
      if (data is List) {
        final activities = data.map((a) => Activity.fromJson(a)).toList();
        return right(activities);
      }
      return left(BadResponseData('Server sent corrupt data'));
    } on TypeError catch (_) {
      return left(BadResponseData('Server sent corrupt data'));
    } catch (e) {
      final f = makeRemoteFailure(e, (statusCode, error) {
        switch (statusCode) {
          case HttpStatus.notFound:
            return Failure('notfound failure');
          case HttpStatus.internalServerError:
            return Failure('server failure');
          default:
            return Unexpected('unexpected failure');
        }
      });
      return left(f);
    }
  }

  Future<Either<Failure, List<InboxMessage>>> getInboxMessages() async {
    try {
      final response =
          await dio.get('http://10.0.2.2:4000/api/me/inbox/messages');
      print(response.data);
      final data = response.data;
      if (data is List) {
        final messages = data.map((m) => InboxMessage.fromJson(m)).toList();
        return right(messages);
      }
      return left(BadResponseData('Server sent corrupt data'));
    } on TypeError catch (_) {
      return left(BadResponseData('Server sent corrupt data'));
    } catch (e) {
      final f = makeRemoteFailure(e, (statusCode, error) {
        switch (statusCode) {
          case HttpStatus.unprocessableEntity:
            return ValidationFailure('validation failure');
          case HttpStatus.internalServerError:
            return Failure('server failure');
          default:
            return Unexpected('unexpected failure');
        }
      });
      return left(f);
    }
  }

  Future<Either<Failure, Unit>> markInboxMessageAsRead(String id) async {
    try {
      await dio.post(
        'http://10.0.2.2:4000/api/me/inbox/messages/mark-read',
        data: {'messageId': id},
      );
      return right(unit);
    } catch (e) {
      final f = makeRemoteFailure(e, (statusCode, error) {
        switch (statusCode) {
          case HttpStatus.unprocessableEntity:
            return ValidationFailure('validation failure');
          case HttpStatus.badRequest:
            return Failure('couldnt update. Try again later');
          case HttpStatus.internalServerError:
            return Failure('server failure');
          default:
            return Unexpected('unexpected failure');
        }
      });
      return left(f);
    }
  }
}
