import 'package:dio/dio.dart';
import 'package:reddit_clone/domain/core/failure.dart';
import 'package:reddit_clone/domain/core/response_error.dart';

typedef ResponseErrorHandler = Failure Function(
    int statusCode, ResponseError error);

// creates Dio error and response status error related failures
Failure makeRemoteFailure(Object e, ResponseErrorHandler handler) {
  if (e is DioError) {
    switch (e.type) {
      case DioErrorType.response:
        final error = ResponseError.fromJson(e.response!.data);
        return handler(e.response!.statusCode!, error);
      case DioErrorType.connectTimeout:
      case DioErrorType.receiveTimeout:
      case DioErrorType.sendTimeout:
        return TimeoutFailure();
      default:
        return Unexpected('Other dio errors');
    }
  }
  return Unexpected(e.toString());
}
