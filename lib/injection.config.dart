// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:firebase_messaging/firebase_messaging.dart' as _i4;
import 'package:flutter/material.dart' as _i43;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i48;

import '_presentation/user/user_panel_controller.dart' as _i49;
import 'application/auth/auth_bloc.dart' as _i39;
import 'application/auth/login_form/login_form_bloc.dart' as _i42;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i22;
import 'application/chat/chat_rooms/chat_rooms_bloc.dart' as _i35;
import 'application/home_tab_page/feed_bloc.dart' as _i41;
import 'application/navigation_service.dart' as _i46;
import 'application/notification/bloc/notification_bloc.dart' as _i47;
import 'application/snackbar_service.dart' as _i17;
import 'application/subreddit/subreddit_bloc.dart' as _i32;
import 'domain/auth/i_auth_service.dart' as _i40;
import 'domain/auth/i_google_auth_service.dart' as _i10;
import 'domain/auth/token_cache_service.dart' as _i51;
import 'domain/auth/user_remote_checker.dart' as _i19;
import 'domain/chat/i_chat_cache.dart' as _i7;
import 'domain/feed/i_feed_service.dart' as _i37;
import 'domain/i_image_service.dart' as _i12;
import 'domain/i_key_generator.dart' as _i14;
import 'domain/i_network_connectivity.dart' as _i24;
import 'domain/i_snackbar_service.dart' as _i16;
import 'domain/i_socket_manager.dart' as _i36;
import 'domain/i_token_cache_service.dart' as _i34;
import 'domain/post/i_post_cache_tagger.dart' as _i27;
import 'domain/subreddit/i_subreddit_service.dart' as _i30;
import 'infastructure/auth/auth_service.dart' as _i52;
import 'infastructure/auth/google_auth_service.dart' as _i11;
import 'infastructure/auth/i_user_remote_checker.dart' as _i18;
import 'infastructure/chat/chat_cache.dart' as _i8;
import 'infastructure/chat/chat_messages_repository.dart' as _i25;
import 'infastructure/chat/chat_messages_service.dart' as _i26;
import 'infastructure/chat/chat_remote_source.dart' as _i9;
import 'infastructure/core/cache_service.dart' as _i29;
import 'infastructure/core/connectivity_dio_checker.dart' as _i23;
import 'infastructure/core/image_service.dart' as _i13;
import 'infastructure/core/network_connectivity.dart' as _i44;
import 'infastructure/core/simple_key_generator.dart' as _i15;
import 'infastructure/core/token_dio_interceptor.dart' as _i33;
import 'infastructure/feed/fake_feed_service.dart' as _i38;
import 'infastructure/feed/feed_repository.dart' as _i50;
import 'infastructure/notification/local_notifications_service.dart' as _i20;
import 'infastructure/notification/push_notification_service.dart' as _i21;
import 'infastructure/post/post_cache_tagger.dart' as _i28;
import 'infastructure/socket_manager.dart' as _i45;
import 'infastructure/subreddit/subreddit_service.dart' as _i31;
import 'infastructure/third_party_modules.dart'
    as _i53; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i9.IChatRemoteSource>(
      () => _i9.ChatRemoteSource(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i10.IGoogleAuthService>(
      () => _i11.GoogleAuthService(googleSignIn: get<_i6.GoogleSignIn>()));
  gh.lazySingleton<_i12.IImageService>(() => _i13.ImageService());
  gh.lazySingleton<_i14.IKeyGenerator>(() => _i15.SimpleTypeKeyGenerator());
  gh.lazySingleton<_i16.ISnackbarService>(() => _i17.SnackbarService());
  gh.lazySingleton<_i18.IUserRemoteChecker>(() => _i19.UserRemoteChecker());
  gh.lazySingleton<_i20.LocalNotificationsService>(() =>
      _i20.LocalNotificationsService(
          localNotifications: get<_i5.FlutterLocalNotificationsPlugin>()));
  gh.lazySingleton<_i21.PushNotificationService>(() =>
      _i21.PushNotificationService(
          get<_i4.FirebaseMessaging>(), get<_i20.LocalNotificationsService>()));
  gh.lazySingleton<_i22.SignUpFormatValidator>(
      () => _i22.SignUpFormatValidator());
  gh.factory<_i23.ConnectivityDioChecker>(
      () => _i23.ConnectivityDioChecker(get<_i24.INetworkConnectivity>()));
  gh.lazySingleton<_i25.IChatMessagesRepository>(() =>
      _i25.ChatMessagesRepository(
          remote: get<_i9.IChatRemoteSource>(),
          cache: get<_i7.IChatCache>(),
          network: get<_i24.INetworkConnectivity>()));
  gh.lazySingleton<_i26.IChatMessagesService>(() => _i26.ChatMessagesService(
      chatMessagesRepository: get<_i25.IChatMessagesRepository>()));
  gh.lazySingleton<_i27.IPostCacheTagger>(
      () => _i28.PostCacheTagger(cacheService: get<_i29.CacheService>()));
  gh.lazySingleton<_i30.ISubredditService>(() => _i31.SubredditService(
      dio: get<_i3.Dio>(), tagger: get<_i27.IPostCacheTagger>()));
  gh.factory<_i32.SubredditBloc>(() =>
      _i32.SubredditBloc(subredditService: get<_i30.ISubredditService>()));
  gh.factory<_i33.TokenDioInterceptor>(() => _i33.TokenDioInterceptor(
      tokenCacheService: get<_i34.ITokenCacheService>()));
  gh.factory<_i35.ChatRoomsBloc>(() => _i35.ChatRoomsBloc(
      chatService: get<_i26.IChatMessagesService>(),
      socketManager: get<_i36.ISocketManager>()));
  gh.lazySingleton<_i37.IFeedService>(
      () => _i38.FakeFeedService(tagger: get<_i27.IPostCacheTagger>()));
  gh.factory<_i39.AuthBloc>(
      () => _i39.AuthBloc(authService: get<_i40.IAuthService>()));
  gh.factory<_i41.FeedBloc>(
      () => _i41.FeedBloc(feedService: get<_i37.IFeedService>()));
  gh.factory<_i42.LoginFormBloc>(() => _i42.LoginFormBloc(
      authBloc: get<_i39.AuthBloc>(),
      authService: get<_i40.IAuthService>(),
      snackService: get<_i16.ISnackbarService>()));
  gh.factory<_i22.SignUpFormBloc>(() => _i22.SignUpFormBloc(
      authBloc: get<_i39.AuthBloc>(),
      authService: get<_i40.IAuthService>(),
      checker: get<_i18.IUserRemoteChecker>(),
      formatValidator: get<_i22.SignUpFormatValidator>(),
      snackbarService: get<_i16.ISnackbarService>()));
  gh.singleton<_i43.GlobalKey<_i43.NavigatorState>>(
      navigatorKeyModule.navigatorKey);
  gh.singleton<_i24.INetworkConnectivity>(_i44.NetworkConnectivity());
  gh.singleton<_i36.ISocketManager>(_i45.SocketManager());
  gh.singleton<_i46.NavigationService>(_i46.NavigationService());
  gh.singleton<_i47.NotificationBloc>(
      _i47.NotificationBloc(socketManager: get<_i36.ISocketManager>()));
  await gh.singletonAsync<_i48.SharedPreferences>(() => sharedPrefsModule.prefs,
      preResolve: true);
  gh.singleton<_i49.UserPanelController>(_i49.UserPanelController());
  gh.singleton<_i29.CacheService>(_i29.CacheService(
      keyGenerator: get<_i14.IKeyGenerator>(),
      prefs: get<_i48.SharedPreferences>()));
  gh.singleton<_i50.FeedRepository>(_i50.FeedRepository(
      dio: get<_i3.Dio>(), network: get<_i24.INetworkConnectivity>()));
  gh.singleton<_i34.ITokenCacheService>(
      _i51.TokenCacheService(cacheService: get<_i29.CacheService>()));
  gh.singleton<_i40.IAuthService>(_i52.AuthService(
      dio: get<_i3.Dio>(),
      tokenService: get<_i34.ITokenCacheService>(),
      googleAuthService: get<_i10.IGoogleAuthService>()));
  return get;
}

class _$DioModule extends _i53.DioModule {}

class _$FirebaseModule extends _i53.FirebaseModule {}

class _$LocalNotificationsModule extends _i53.LocalNotificationsModule {}

class _$NavigatorKeyModule extends _i53.NavigatorKeyModule {}

class _$GoogleSignInModule extends _i53.GoogleSignInModule {}

class _$SharedPrefsModule extends _i53.SharedPrefsModule {}
