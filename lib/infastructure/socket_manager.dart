import 'package:reddit_clone/domain/i_socket_manager.dart';

import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:socket_io_client/socket_io_client.dart';
import 'package:injectable/injectable.dart';

final _socketOptions =
    OptionBuilder().setTransports(['websocket']).disableAutoConnect().build();

@Singleton(as: ISocketManager)
class SocketManager implements ISocketManager {
  late final io.Socket socket;

  SocketManager() {
    socket = io.io('http://10.0.2.2:4000', _socketOptions);
  }

  @override
  void connect() {
    if (!socket.connected) {
      socket.auth = {'userId': '61333e7c3e51246558fc1e11'};
      socket.connect();
    }
  }

  @override
  void off(String event, [dynamic Function(dynamic)? handler]) {
    socket.off(event, handler);
  }

  @override
  void emit(String event, data) {
    if (socket.connected) {
      socket.emit(event, data);
    }
  }

  @override
  void on(String event, dynamic Function(dynamic data) handler) {
    socket.on(event, handler);
  }

  @override
  void onConnect(dynamic Function(dynamic data) handler) {
    socket.onConnect(handler);
  }

  @override
  void dispose() {
    socket.dispose();
  }

  @override
  void onDisconnect(dynamic Function(dynamic data) handler) {
    socket.onDisconnect(handler);
  }
}
