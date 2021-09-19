import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failure.dart';
import '../../domain/i_network_connectivity.dart';

@injectable
class ConnectivityDioChecker extends Interceptor {
  final INetworkConnectivity connectivity;

  ConnectivityDioChecker(this.connectivity);

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final hasConnection = await connectivity.hasConnection();
    if (!hasConnection) {
      return handler.reject(DioError(
        requestOptions: options,
        error: Failure.unexpected(''),
      ));
    }
    handler.next(options);
  }
}
