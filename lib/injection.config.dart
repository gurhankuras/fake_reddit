// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:firebase_messaging/firebase_messaging.dart' as _i4;
import 'package:flutter/material.dart' as _i39;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i45;

import '_presentation/user/user_panel_controller.dart' as _i46;
import 'application/auth/auth_bloc.dart' as _i35;
import 'application/auth/login_form/login_form_bloc.dart' as _i38;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i19;
import 'application/chat/chat_rooms/chat_rooms_bloc.dart' as _i32;
import 'application/home_tab_page/feed_bloc.dart' as _i37;
import 'application/navigation_service.dart' as _i43;
import 'application/notification/bloc/notification_bloc.dart' as _i44;
import 'application/snackbar_service.dart' as _i14;
import 'application/subreddit/subreddit_bloc.dart' as _i29;
import 'domain/auth/i_auth_service.dart' as _i36;
import 'domain/auth/i_google_auth_service.dart' as _i7;
import 'domain/auth/token_cache_service.dart' as _i48;
import 'domain/auth/user_remote_checker.dart' as _i16;
import 'domain/feed/i_feed_service.dart' as _i33;
import 'domain/i_image_service.dart' as _i9;
import 'domain/i_key_generator.dart' as _i11;
import 'domain/i_network_connectivity.dart' as _i21;
import 'domain/i_snackbar_service.dart' as _i13;
import 'domain/i_socket_manager.dart' as _i41;
import 'domain/i_token_cache_service.dart' as _i31;
import 'domain/post/i_post_cache_tagger.dart' as _i24;
import 'domain/subreddit/i_subreddit_service.dart' as _i27;
import 'infastructure/auth/auth_service.dart' as _i49;
import 'infastructure/auth/google_auth_service.dart' as _i8;
import 'infastructure/auth/i_user_remote_checker.dart' as _i15;
import 'infastructure/chat/chat_messages_repository.dart' as _i22;
import 'infastructure/chat/chat_messages_service.dart' as _i23;
import 'infastructure/core/cache_service.dart' as _i26;
import 'infastructure/core/connectivity_dio_checker.dart' as _i20;
import 'infastructure/core/image_service.dart' as _i10;
import 'infastructure/core/network_connectivity.dart' as _i40;
import 'infastructure/core/simple_key_generator.dart' as _i12;
import 'infastructure/core/token_dio_interceptor.dart' as _i30;
import 'infastructure/feed/fake_feed_service.dart' as _i34;
import 'infastructure/feed/feed_repository.dart' as _i47;
import 'infastructure/notification/local_notifications_service.dart' as _i17;
import 'infastructure/notification/push_notification_service.dart' as _i18;
import 'infastructure/post/post_cache_tagger.dart' as _i25;
import 'infastructure/socket_manager.dart' as _i42;
import 'infastructure/subreddit/subreddit_service.dart' as _i28;
import 'infastructure/third_party_modules.dart'
    as _i50; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioModule = _$DioModule();
  final firebaseModule = _$FirebaseModule();
  final localNotificationsModule = _$LocalNotificationsModule();
  final navigatorKeyModule = _$NavigatorKeyModule();
  final googleSignInModule = _$GoogleSignInModule();
  final sharedPrefsModule = _$SharedPrefsModule();
  gh.factory<_i3.BaseOptions>(() => dioModule.baseOptions,
      instanceName: 'BaseOptions');
  gh.factory<_i3.Dio>(
      () => dioModule.dio(get<_i3.BaseOptions>(instanceName: 'BaseOptions')));
  gh.lazySingleton<_i4.FirebaseMessaging>(
      () => firebaseModule.firebaseMessaging);
  gh.lazySingleton<_i5.FlutterLocalNotificationsPlugin>(
      () => localNotificationsModule.localNotifications);
  gh.lazySingleton<_i6.GoogleSignIn>(() => googleSignInModule.googleSignIn);
  gh.lazySingleton<_i7.IGoogleAuthService>(
      () => _i8.GoogleAuthService(googleSignIn: get<_i6.GoogleSignIn>()));
  gh.lazySingleton<_i9.IImageService>(() => _i10.ImageService());
  gh.lazySingleton<_i11.IKeyGenerator>(() => _i12.SimpleTypeKeyGenerator());
  gh.lazySingleton<_i13.ISnackbarService>(() => _i14.SnackbarService());
  gh.lazySingleton<_i15.IUserRemoteChecker>(() => _i16.UserRemoteChecker());
  gh.lazySingleton<_i17.LocalNotificationsService>(() =>
      _i17.LocalNotificationsService(
          localNotifications: get<_i5.FlutterLocalNotificationsPlugin>()));
  gh.lazySingleton<_i18.PushNotificationService>(() =>
      _i18.PushNotificationService(
          get<_i4.FirebaseMessaging>(), get<_i17.LocalNotificationsService>()));
  gh.lazySingleton<_i19.SignUpFormatValidator>(
      () => _i19.SignUpFormatValidator());
  gh.factory<_i20.ConnectivityDioChecker>(
      () => _i20.ConnectivityDioChecker(get<_i21.INetworkConnectivity>()));
  gh.lazySingleton<_i22.IChatMessagesRepository>(() =>
      _i22.ChatMessagesRepository(
          dio: get<_i3.Dio>(), network: get<_i21.INetworkConnectivity>()));
  gh.lazySingleton<_i23.IChatMessagesService>(() => _i23.ChatMessagesService(
      chatMessagesRepository: get<_i22.IChatMessagesRepository>()));
  gh.lazySingleton<_i24.IPostCacheTagger>(
      () => _i25.PostCacheTagger(cacheService: get<_i26.CacheService>()));
  gh.lazySingleton<_i27.ISubredditService>(() => _i28.SubredditService(
      dio: get<_i3.Dio>(), tagger: get<_i24.IPostCacheTagger>()));
  gh.factory<_i29.SubredditBloc>(() =>
      _i29.SubredditBloc(subredditService: get<_i27.ISubredditService>()));
  gh.factory<_i30.TokenDioInterceptor>(() => _i30.TokenDioInterceptor(
      tokenCacheService: get<_i31.ITokenCacheService>()));
  gh.factory<_i32.ChatRoomsBloc>(
      () => _i32.ChatRoomsBloc(chatService: get<_i23.IChatMessagesService>()));
  gh.lazySingleton<_i33.IFeedService>(
      () => _i34.FakeFeedService(tagger: get<_i24.IPostCacheTagger>()));
  gh.factory<_i35.AuthBloc>(
      () => _i35.AuthBloc(authService: get<_i36.IAuthService>()));
  gh.factory<_i37.FeedBloc>(
      () => _i37.FeedBloc(feedService: get<_i33.IFeedService>()));
  gh.factory<_i38.LoginFormBloc>(() => _i38.LoginFormBloc(
      authBloc: get<_i35.AuthBloc>(),
      authService: get<_i36.IAuthService>(),
      snackService: get<_i13.ISnackbarService>()));
  gh.factory<_i19.SignUpFormBloc>(() => _i19.SignUpFormBloc(
      authBloc: get<_i35.AuthBloc>(),
      authService: get<_i36.IAuthService>(),
      checker: get<_i15.IUserRemoteChecker>(),
      formatValidator: get<_i19.SignUpFormatValidator>(),
      snackbarService: get<_i13.ISnackbarService>()));
  gh.singleton<_i39.GlobalKey<_i39.NavigatorState>>(
      navigatorKeyModule.navigatorKey);
  gh.singleton<_i21.INetworkConnectivity>(_i40.NetworkConnectivity());
  gh.singleton<_i41.ISocketManager>(_i42.SocketManager());
  gh.singleton<_i43.NavigationService>(_i43.NavigationService());
  gh.singleton<_i44.NotificationBloc>(
      _i44.NotificationBloc(socketManager: get<_i41.ISocketManager>()));
  await gh.singletonAsync<_i45.SharedPreferences>(() => sharedPrefsModule.prefs,
      preResolve: true);
  gh.singleton<_i46.UserPanelController>(_i46.UserPanelController());
  gh.singleton<_i26.CacheService>(_i26.CacheService(
      keyGenerator: get<_i11.IKeyGenerator>(),
      prefs: get<_i45.SharedPreferences>()));
  gh.singleton<_i47.FeedRepository>(_i47.FeedRepository(
      dio: get<_i3.Dio>(), network: get<_i21.INetworkConnectivity>()));
  gh.singleton<_i31.ITokenCacheService>(
      _i48.TokenCacheService(cacheService: get<_i26.CacheService>()));
  gh.singleton<_i36.IAuthService>(_i49.AuthService(
      dio: get<_i3.Dio>(),
      tokenService: get<_i31.ITokenCacheService>(),
      googleAuthService: get<_i7.IGoogleAuthService>()));
  return get;
}

class _$DioModule extends _i50.DioModule {}

class _$FirebaseModule extends _i50.FirebaseModule {}

class _$LocalNotificationsModule extends _i50.LocalNotificationsModule {}

class _$NavigatorKeyModule extends _i50.NavigatorKeyModule {}

class _$GoogleSignInModule extends _i50.GoogleSignInModule {}

class _$SharedPrefsModule extends _i50.SharedPrefsModule {}
