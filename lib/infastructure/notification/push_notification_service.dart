import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';
import '../../routes/app_router.gr.dart';
import '../../utility/app_logger.dart';

import '../../injection.dart';
import 'local_notifications_service.dart';

// part of 'local_notifications_service.dart';

@LazySingleton()
class PushNotificationService {
  final FirebaseMessaging firebaseMessaging;
  final router = getIt<AppRouter>();
  final LocalNotificationsService localNotifications;

  PushNotificationService(
    this.firebaseMessaging,
    this.localNotifications,
  ) {
    log.i('PushNotificationService created');
  }

  Future<void> initiliase() async {
    if (Platform.isIOS) {
      await FirebaseMessaging.instance
          .setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );
    }
    final initialMessage = await firebaseMessaging.getInitialMessage();

    if (initialMessage != null) {
      handleMessage(initialMessage);
    }

    FirebaseMessaging.onMessage.listen((message) {
      final notification = message.notification;
      final android = message.notification?.android;

      if (notification != null && android != null) {
        localNotifications.display(message);
      } else {
        handleMessage(message);
      }
    });
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
    // FirebaseMessaging.onBackgroundMessage(handleMessageAsync);
  }
}

void handleMessage(RemoteMessage message) {
  print(message);
  // final route = message.data['route'];
  // if (route != null) {
  //   getIt<NavigationService>().navigateTo(route);
  // }
  // getIt<NotificationBloc>()
  // .add(NotificationEvent.newMessageReceived('1234567890'));
}

Future<void> handleMessageAsync(RemoteMessage message) async {
  final route = message.data['route'];
  if (route != null) {
    getIt<AppRouter>().pushNamed(route);
  }
}
