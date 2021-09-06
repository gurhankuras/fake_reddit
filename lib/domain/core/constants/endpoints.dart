abstract class Endpoints {
  static const login = '/login';
  static const register = '/register';
  static const chat = '/chat';
  static const protected = '/protected';
  static const register_availability = '/register/availability';
  // static const chat = '/chat';

  // static const me = chat;
}

// void a() {}

// class Endpoint {
//   final String base;
//   final Endpoint? prevEndpoint;
//   const Endpoint(this.base, {this.prevEndpoint});
// //  final chatSend = '${chat}f';
//   // String get chatSend => '$base/send';
//   String path(String part) {
//     if (prevEndpoint != null) {
//       return '/${prevEndpoint!.base}/$base/$part';
//     } else {
//       return '/$base/$part';
//     }
//   }
// }

// class ChatEndpoint extends Endpoint {
//   const ChatEndpoint(
//     String base,
//   ) : super(base);
//   String get chatSend => path('send');
// }

// class MeEndpoint extends Endpoint {
//   MeEndpoint(String base) : super(base);
//   String get prefs => path('prefs');
// }

// class ThreadEndPoint extends Endpoint {
//   ThreadEndPoint(String base, Endpoint endpoint)
//       : super(base, prevEndpoint: endpoint);
// }

// class LiveEndPoint extends Endpoint {
//   LiveEndPoint(String base) : super(base);
// }


// // /api/live/thread