import 'package:connectivity/connectivity.dart';
import 'package:reddit_clone/domain/i_network_connectivity.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: INetworkConnectivity)
class NetworkConnectivity extends INetworkConnectivity {
  @override
  Future<bool> hasConnection() async =>
      await Connectivity().checkConnectivity() != ConnectivityResult.none;
}
