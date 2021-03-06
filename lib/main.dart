import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';

import '_presentation/core/reusable/scaled_drawer.dart';
import '_presentation/main_navigation_pages/home/home_vm.dart';
import 'app.dart';
import 'application/auth/auth_bloc.dart';
import 'application/core/simple_bloc_observer.dart';
import 'application/notification/bloc/notification_bloc.dart';
import 'domain/auth/token_cache_service.dart';
import 'domain/env.dart';
import 'domain/i_socket_manager.dart';
import 'infastructure/core/cache_service.dart';
import 'infastructure/notification/local_notifications_service.dart';
import 'infastructure/notification/push_notification_service.dart';
import 'injection.dart';
import 'routes/app_router.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  getIt.registerSingleton<AppRouter>(AppRouter());

  await Firebase.initializeApp();
  await dotenv.load(fileName: ".env");
  await configureDependencies(Env.dev);
  await getIt<LocalNotificationsService>().initialize();
  print('messaging token: ${await FirebaseMessaging.instance.getToken()}');
  await getIt<PushNotificationService>().initiliase();

  final authBloc = getIt<AuthBloc>();
  final notificationBloc = NotificationBloc(
    authBloc: authBloc,
    socketManager: getIt<ISocketManager>(),
  );
  getIt<ISocketManager>().connect();

  print(await getIt<CacheService>().getString(TokenKeys.ACCESS_TOKEN_KEY));
  print(await getIt<CacheService>().getString(TokenKeys.REFRESH_TOKEN_KEY));

  Bloc.observer = SimpleBlocObserver();
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => MyDrawerController()),
        BlocProvider.value(
            value: authBloc..add(const AuthEvent.authCheckRequested())),
        BlocProvider.value(value: notificationBloc),
        ChangeNotifierProvider(create: (context) => HomeVM()),
      ],
      child: MyApp(),
    ),
  );
}
