import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_failures.freezed.dart';

@freezed
class ServerFailure with _$ServerFailure {
  const factory ServerFailure.unexpected() = _Unexpected;
  const factory ServerFailure.unexpectedResponseType() =
      _UnexpectedResponseType;
  // const factory ServerFailure.timeOut() = _TimeOut;
  const factory ServerFailure.badStatus(int statusCode) = _BadStatus;
  const factory ServerFailure.hasNoConnection() = _HasNoConnection;
}
