import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

const int _PORT = 4000;
const String _androidUrl = 'http://10.0.2.2:';
const String _othersUrl = 'http://localhost:';

final String _baseUrl =
    Platform.isAndroid ? '$_androidUrl$_PORT/api' : '$_othersUrl$_PORT/api';

@module
abstract class DioModule {
  // You can register named preemptive types like follows

  @Named('BaseOptions')
  BaseOptions get baseOptions => BaseOptions(
        baseUrl: _baseUrl,
        receiveDataWhenStatusError: true,
        receiveTimeout: 500,
        connectTimeout: 500,
        sendTimeout: 500,
      );

  @injectable
  Dio dio(@Named('BaseOptions') BaseOptions baseOptions) => Dio(baseOptions);
}

@module
abstract class SharedPrefsModule {
  @Singleton()
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}

@module
abstract class GoogleSignInModule {
  @LazySingleton()
  GoogleSignIn get googleSignIn => GoogleSignIn();
}

@module
abstract class FirebaseModule {
  @LazySingleton()
  FirebaseMessaging get firebaseMessaging => FirebaseMessaging.instance;
}

@module
abstract class LocalNotificationsModule {
  @LazySingleton()
  FlutterLocalNotificationsPlugin get localNotifications =>
      FlutterLocalNotificationsPlugin();
}

@module
abstract class NavigatorKeyModule {
  @Singleton()
  GlobalKey<NavigatorState> get navigatorKey => GlobalKey<NavigatorState>();
}
