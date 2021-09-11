// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:firebase_messaging/firebase_messaging.dart' as _i4;
import 'package:flutter/material.dart' as _i41;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i47;

import '_presentation/user/user_panel_controller.dart' as _i48;
import 'application/auth/auth_bloc.dart' as _i37;
import 'application/auth/login_form/login_form_bloc.dart' as _i40;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i21;
import 'application/chat/chat_rooms/chat_rooms_bloc.dart' as _i34;
import 'application/home_tab_page/feed_bloc.dart' as _i39;
import 'application/navigation_service.dart' as _i45;
import 'application/notification/bloc/notification_bloc.dart' as _i46;
import 'application/snackbar_service.dart' as _i16;
import 'application/subreddit/subreddit_bloc.dart' as _i31;
import 'domain/auth/i_auth_service.dart' as _i38;
import 'domain/auth/i_google_auth_service.dart' as _i9;
import 'domain/auth/token_cache_service.dart' as _i50;
import 'domain/auth/user_remote_checker.dart' as _i18;
import 'domain/chat/i_chat_cache.dart' as _i7;
import 'domain/feed/i_feed_service.dart' as _i35;
import 'domain/i_image_service.dart' as _i11;
import 'domain/i_key_generator.dart' as _i13;
import 'domain/i_network_connectivity.dart' as _i23;
import 'domain/i_snackbar_service.dart' as _i15;
import 'domain/i_socket_manager.dart' as _i43;
import 'domain/i_token_cache_service.dart' as _i33;
import 'domain/post/i_post_cache_tagger.dart' as _i26;
import 'domain/subreddit/i_subreddit_service.dart' as _i29;
import 'infastructure/auth/auth_service.dart' as _i51;
import 'infastructure/auth/google_auth_service.dart' as _i10;
import 'infastructure/auth/i_user_remote_checker.dart' as _i17;
import 'infastructure/chat/chat_cache.dart' as _i8;
import 'infastructure/chat/chat_messages_repository.dart' as _i24;
import 'infastructure/chat/chat_messages_service.dart' as _i25;
import 'infastructure/core/cache_service.dart' as _i28;
import 'infastructure/core/connectivity_dio_checker.dart' as _i22;
import 'infastructure/core/image_service.dart' as _i12;
import 'infastructure/core/network_connectivity.dart' as _i42;
import 'infastructure/core/simple_key_generator.dart' as _i14;
import 'infastructure/core/token_dio_interceptor.dart' as _i32;
import 'infastructure/feed/fake_feed_service.dart' as _i36;
import 'infastructure/feed/feed_repository.dart' as _i49;
import 'infastructure/notification/local_notifications_service.dart' as _i19;
import 'infastructure/notification/push_notification_service.dart' as _i20;
import 'infastructure/post/post_cache_tagger.dart' as _i27;
import 'infastructure/socket_manager.dart' as _i44;
import 'infastructure/subreddit/subreddit_service.dart' as _i30;
import 'infastructure/third_party_modules.dart'
    as _i52; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i7.IChatCache>(() => _i8.ChatCache());
  gh.lazySingleton<_i9.IGoogleAuthService>(
      () => _i10.GoogleAuthService(googleSignIn: get<_i6.GoogleSignIn>()));
  gh.lazySingleton<_i11.IImageService>(() => _i12.ImageService());
  gh.lazySingleton<_i13.IKeyGenerator>(() => _i14.SimpleTypeKeyGenerator());
  gh.lazySingleton<_i15.ISnackbarService>(() => _i16.SnackbarService());
  gh.lazySingleton<_i17.IUserRemoteChecker>(() => _i18.UserRemoteChecker());
  gh.lazySingleton<_i19.LocalNotificationsService>(() =>
      _i19.LocalNotificationsService(
          localNotifications: get<_i5.FlutterLocalNotificationsPlugin>()));
  gh.lazySingleton<_i20.PushNotificationService>(() =>
      _i20.PushNotificationService(
          get<_i4.FirebaseMessaging>(), get<_i19.LocalNotificationsService>()));
  gh.lazySingleton<_i21.SignUpFormatValidator>(
      () => _i21.SignUpFormatValidator());
  gh.factory<_i22.ConnectivityDioChecker>(
      () => _i22.ConnectivityDioChecker(get<_i23.INetworkConnectivity>()));
  gh.lazySingleton<_i24.IChatMessagesRepository>(() =>
      _i24.ChatMessagesRepository(
          dio: get<_i3.Dio>(),
          cache: get<_i7.IChatCache>(),
          network: get<_i23.INetworkConnectivity>()));
  gh.lazySingleton<_i25.IChatMessagesService>(() => _i25.ChatMessagesService(
      chatMessagesRepository: get<_i24.IChatMessagesRepository>()));
  gh.lazySingleton<_i26.IPostCacheTagger>(
      () => _i27.PostCacheTagger(cacheService: get<_i28.CacheService>()));
  gh.lazySingleton<_i29.ISubredditService>(() => _i30.SubredditService(
      dio: get<_i3.Dio>(), tagger: get<_i26.IPostCacheTagger>()));
  gh.factory<_i31.SubredditBloc>(() =>
      _i31.SubredditBloc(subredditService: get<_i29.ISubredditService>()));
  gh.factory<_i32.TokenDioInterceptor>(() => _i32.TokenDioInterceptor(
      tokenCacheService: get<_i33.ITokenCacheService>()));
  gh.factory<_i34.ChatRoomsBloc>(
      () => _i34.ChatRoomsBloc(chatService: get<_i25.IChatMessagesService>()));
  gh.lazySingleton<_i35.IFeedService>(
      () => _i36.FakeFeedService(tagger: get<_i26.IPostCacheTagger>()));
  gh.factory<_i37.AuthBloc>(
      () => _i37.AuthBloc(authService: get<_i38.IAuthService>()));
  gh.factory<_i39.FeedBloc>(
      () => _i39.FeedBloc(feedService: get<_i35.IFeedService>()));
  gh.factory<_i40.LoginFormBloc>(() => _i40.LoginFormBloc(
      authBloc: get<_i37.AuthBloc>(),
      authService: get<_i38.IAuthService>(),
      snackService: get<_i15.ISnackbarService>()));
  gh.factory<_i21.SignUpFormBloc>(() => _i21.SignUpFormBloc(
      authBloc: get<_i37.AuthBloc>(),
      authService: get<_i38.IAuthService>(),
      checker: get<_i17.IUserRemoteChecker>(),
      formatValidator: get<_i21.SignUpFormatValidator>(),
      snackbarService: get<_i15.ISnackbarService>()));
  gh.singleton<_i41.GlobalKey<_i41.NavigatorState>>(
      navigatorKeyModule.navigatorKey);
  gh.singleton<_i23.INetworkConnectivity>(_i42.NetworkConnectivity());
  gh.singleton<_i43.ISocketManager>(_i44.SocketManager());
  gh.singleton<_i45.NavigationService>(_i45.NavigationService());
  gh.singleton<_i46.NotificationBloc>(
      _i46.NotificationBloc(socketManager: get<_i43.ISocketManager>()));
  await gh.singletonAsync<_i47.SharedPreferences>(() => sharedPrefsModule.prefs,
      preResolve: true);
  gh.singleton<_i48.UserPanelController>(_i48.UserPanelController());
  gh.singleton<_i28.CacheService>(_i28.CacheService(
      keyGenerator: get<_i13.IKeyGenerator>(),
      prefs: get<_i47.SharedPreferences>()));
  gh.singleton<_i49.FeedRepository>(_i49.FeedRepository(
      dio: get<_i3.Dio>(), network: get<_i23.INetworkConnectivity>()));
  gh.singleton<_i33.ITokenCacheService>(
      _i50.TokenCacheService(cacheService: get<_i28.CacheService>()));
  gh.singleton<_i38.IAuthService>(_i51.AuthService(
      dio: get<_i3.Dio>(),
      tokenService: get<_i33.ITokenCacheService>(),
      googleAuthService: get<_i9.IGoogleAuthService>()));
  return get;
}

class _$DioModule extends _i52.DioModule {}

class _$FirebaseModule extends _i52.FirebaseModule {}

class _$LocalNotificationsModule extends _i52.LocalNotificationsModule {}

class _$NavigatorKeyModule extends _i52.NavigatorKeyModule {}

class _$GoogleSignInModule extends _i52.GoogleSignInModule {}

class _$SharedPrefsModule extends _i52.SharedPrefsModule {}
