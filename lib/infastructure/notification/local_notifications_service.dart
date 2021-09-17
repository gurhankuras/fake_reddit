import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:reddit_clone/app_router.gr.dart';
import 'package:reddit_clone/injection.dart';
import 'package:reddit_clone/utility/app_logger.dart';
import 'package:injectable/injectable.dart';

// part 'push_notification_service.dart';

@LazySingleton()
class LocalNotificationsService {
  final FlutterLocalNotificationsPlugin localNotifications;
  final router = getIt<AppRouter>();
  LocalNotificationsService({required this.localNotifications});

  Future<void> initialize() async {
    final initSettings = makeInitSettings();
    await localNotifications.initialize(initSettings,
        onSelectNotification: (route) async {
      if (route != null) {
        log.i(route);
        router.pushNamed(route);
      }
      log.i(route);
    });
  }

  InitializationSettings makeInitSettings() {
    final androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    return InitializationSettings(
      android: androidSettings,
    );
  }

  NotificationDetails makeNotificationDetails(AndroidNotification? android) {
    final androidSettings = AndroidNotificationDetails(
      'reddit_clone',
      'reddit_clone',
      'reddit channel',
      importance: Importance.max,
      priority: Priority.high,
      icon: android?.smallIcon,
    );
    return NotificationDetails(
      android: androidSettings,
    );
  }

  Future<void> display(RemoteMessage message) async {
    // final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    final title = message.notification?.title;
    final body = message.notification?.body;
    final route = message.data['route'];
    final details = makeNotificationDetails(message.notification?.android);
    try {
      await localNotifications.show(
        message.hashCode,
        title,
        body,
        details,
        payload: route,
      );
    } catch (e) {
      log.wtf(e);
    }
  }
}
