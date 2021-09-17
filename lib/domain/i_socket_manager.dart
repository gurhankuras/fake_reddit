abstract class ISocketManager {
  void connect();
  void onConnect(dynamic Function(dynamic data) handler);
  void onDisconnect(dynamic Function(dynamic data) handler);
  void on(String event, dynamic Function(dynamic data) handler);
  void emit(String event, dynamic data);
  void dispose();
  void off(String event, [dynamic Function(dynamic)? handler]);
}


/**
 * 
 * 
 * 
  void _prepateSocket() {
    final options = OptionBuilder()
        .setTransports(['websocket'])
        .setExtraHeaders({'foo': 'bar'})
        .disableAutoConnect()
        .build();

    socket = IO.io('http://10.0.2.2:4000', options);
    socket.connect();
    socket.onConnect((_) => print('connect'));
    // socket.on('messages_loaded', (messages) {
    //   print(messages);
    //   if (messages is List) {
    //     final chatMessages = messages
    //         .map(
    //           (e) => ChatMessage(
    //             text: e['text'],
    //             senderAvatar: e['user']['avatar'],
    //             sentAt:
    //                 // DateTime.now().toIso8601String(),
    //                 e['createdAt'].toString(),
    //             senderName: e['user']['name'],
    //           ),
    //         )
    //         .toList();
    //     add(ChatEvent.messagedLoaded(chatMessages));
    //   }
    // });

    socket.on('typing', (data) => add(ChatEvent.theOtherTyped()));
    socket.on('message_sent', (message) {
      // add(ChatEvent.messageSent());
      add(ChatEvent.theOtherSentMessage(ChatMessageDTO.fromJson(message)));
    });
    socket.onDisconnect((data) => print('disconnected'));
    socket.emit('messages_requested', {'roomId': '612cc72f65a882665306cc0e'});
  }

 */