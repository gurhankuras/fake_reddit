// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:firebase_messaging/firebase_messaging.dart' as _i4;
import 'package:flutter/material.dart' as _i6;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i31;

import '_presentation/user/user_panel_controller.dart' as _i33;
import 'application/auth/auth_bloc.dart' as _i63;
import 'application/auth/login_form/login_form_bloc.dart' as _i65;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i32;
import 'application/bloc/create_feed_bloc.dart' as _i37;
import 'application/change_community_avatar/change_community_avatar_bloc.dart'
    as _i56;
import 'application/chat/chat/chat_bloc.dart' as _i57;
import 'application/chat/chat_rooms/chat_rooms_bloc.dart' as _i58;
import 'application/home_tab_page/feed_bloc.dart' as _i64;
import 'application/inbox/inbox_activities/inbox_activities_bloc.dart' as _i50;
import 'application/inbox/inbox_messages/inbox_messages_bloc.dart' as _i51;
import 'application/post/post_comment/post_comment_bloc.dart' as _i52;
import 'application/post/post_content/post_content_bloc.dart' as _i53;
import 'application/snackbar_service.dart' as _i22;
import 'application/subreddit/subreddit_bloc.dart' as _i54;
import 'application/voting/bloc/vote_bloc.dart' as _i34;
import 'domain/auth/i_auth_service.dart' as _i59;
import 'domain/auth/i_google_auth_service.dart' as _i13;
import 'domain/auth/i_user_remote_checker.dart' as _i25;
import 'domain/auth/token_cache_service.dart' as _i49;
import 'domain/chat/i_chat_cache.dart' as _i8;
import 'domain/comment/i_comment_service.dart' as _i11;
import 'domain/feed/i_feed_repository.dart' as _i40;
import 'domain/feed/i_feed_service.dart' as _i61;
import 'domain/i_image_service.dart' as _i15;
import 'domain/i_key_generator.dart' as _i17;
import 'domain/i_network_connectivity.dart' as _i19;
import 'domain/i_snackbar_service.dart' as _i21;
import 'domain/i_socket_manager.dart' as _i23;
import 'domain/i_token_cache_service.dart' as _i48;
import 'domain/inbox/i_inbox_repository.dart' as _i42;
import 'domain/post/i_post_cache_tagger.dart' as _i44;
import 'domain/subreddit/i_subreddit_service.dart' as _i46;
import 'infastructure/auth/auth_service.dart' as _i60;
import 'infastructure/auth/google_auth_service.dart' as _i14;
import 'infastructure/auth/user_remote_checker.dart' as _i26;
import 'infastructure/chat/chat_cache.dart' as _i9;
import 'infastructure/chat/chat_messages_repository.dart' as _i38;
import 'infastructure/chat/chat_messages_service.dart' as _i39;
import 'infastructure/chat/chat_remote_source.dart' as _i10;
import 'infastructure/comment/fake_comment_service.dart' as _i12;
import 'infastructure/core/cache_service.dart' as _i35;
import 'infastructure/core/connectivity_dio_checker.dart' as _i36;
import 'infastructure/core/image_service.dart' as _i16;
import 'infastructure/core/network_connectivity.dart' as _i20;
import 'infastructure/core/simple_key_generator.dart' as _i18;
import 'infastructure/core/token_dio_interceptor.dart' as _i55;
import 'infastructure/feed/fake_feed_service.dart' as _i62;
import 'infastructure/feed/feed_repository.dart' as _i41;
import 'infastructure/inbox/inbox_remote_source.dart' as _i27;
import 'infastructure/inbox/inbox_repository.dart' as _i43;
import 'infastructure/notification/local_notifications_service.dart' as _i28;
import 'infastructure/notification/push_notification_service.dart' as _i30;
import 'infastructure/post/post_cache_tagger.dart' as _i45;
import 'infastructure/post/post_service.dart' as _i29;
import 'infastructure/socket_manager.dart' as _i24;
import 'infastructure/subreddit/subreddit_service.dart' as _i47;
import 'infastructure/third_party_modules.dart'
    as _i66; // ignore_for_file: unnecessary_lambdas

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
  gh.singleton<_i6.GlobalKey<_i6.NavigatorState>>(
      navigatorKeyModule.navigatorKey);
  gh.lazySingleton<_i7.GoogleSignIn>(() => googleSignInModule.googleSignIn);
  gh.lazySingleton<_i8.IChatCache>(() => _i9.ChatCache());
  gh.lazySingleton<_i10.IChatRemoteSource>(
      () => _i10.ChatRemoteSource(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i11.ICommentService>(() => _i12.FakeCommentService());
  gh.lazySingleton<_i13.IGoogleAuthService>(
      () => _i14.GoogleAuthService(googleSignIn: get<_i7.GoogleSignIn>()));
  gh.lazySingleton<_i15.IImageService>(() => _i16.ImageService());
  gh.lazySingleton<_i17.IKeyGenerator>(() => _i18.SimpleTypeKeyGenerator());
  gh.singleton<_i19.INetworkConnectivity>(_i20.NetworkConnectivity());
  gh.lazySingleton<_i21.ISnackbarService>(() => _i22.SnackbarService());
  gh.singleton<_i23.ISocketManager>(_i24.SocketManager());
  gh.lazySingleton<_i25.IUserRemoteChecker>(() => _i26.UserRemoteChecker());
  gh.lazySingleton<_i27.InboxRemoteSource>(
      () => _i27.InboxRemoteSource(get<_i3.Dio>()));
  gh.lazySingleton<_i28.LocalNotificationsService>(() =>
      _i28.LocalNotificationsService(
          localNotifications: get<_i5.FlutterLocalNotificationsPlugin>()));
  gh.lazySingleton<_i29.PostService>(() => _i29.PostService());
  gh.lazySingleton<_i30.PushNotificationService>(() =>
      _i30.PushNotificationService(
          get<_i4.FirebaseMessaging>(), get<_i28.LocalNotificationsService>()));
  await gh.singletonAsync<_i31.SharedPreferences>(() => sharedPrefsModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i32.SignUpFormatValidator>(
      () => _i32.SignUpFormatValidator());
  gh.singleton<_i33.UserPanelController>(_i33.UserPanelController());
  gh.factoryParam<_i34.VoteBloc, int?, dynamic>(
      (upvotes, _) => _i34.VoteBloc(upvotes));
  gh.singleton<_i35.CacheService>(_i35.CacheService(
      keyGenerator: get<_i17.IKeyGenerator>(),
      prefs: get<_i31.SharedPreferences>()));
  gh.factory<_i36.ConnectivityDioChecker>(
      () => _i36.ConnectivityDioChecker(get<_i19.INetworkConnectivity>()));
  gh.factory<_i37.CreateFeedBloc>(
      () => _i37.CreateFeedBloc(imageService: get<_i15.IImageService>()));
  gh.lazySingleton<_i38.IChatMessagesRepository>(() =>
      _i38.ChatMessagesRepository(
          remote: get<_i10.IChatRemoteSource>(),
          cache: get<_i8.IChatCache>(),
          network: get<_i19.INetworkConnectivity>()));
  gh.lazySingleton<_i39.IChatMessagesService>(() => _i39.ChatMessagesService(
      chatMessagesRepository: get<_i38.IChatMessagesRepository>()));
  gh.singleton<_i40.IFeedRepository>(_i41.FeedRepository(
      dio: get<_i3.Dio>(), network: get<_i19.INetworkConnectivity>()));
  gh.lazySingleton<_i42.IInboxRepository>(() => _i43.InboxRepository(
      inboxRemoteSource: get<_i27.InboxRemoteSource>(),
      connectivity: get<_i19.INetworkConnectivity>()));
  gh.lazySingleton<_i44.IPostCacheTagger>(
      () => _i45.PostCacheTagger(cacheService: get<_i35.CacheService>()));
  gh.lazySingleton<_i46.ISubredditService>(() => _i47.SubredditService(
      dio: get<_i3.Dio>(), tagger: get<_i44.IPostCacheTagger>()));
  gh.singleton<_i48.ITokenCacheService>(
      _i49.TokenCacheService(cacheService: get<_i35.CacheService>()));
  gh.factory<_i50.InboxActivitiesBloc>(
      () => _i50.InboxActivitiesBloc(get<_i42.IInboxRepository>()));
  gh.factory<_i51.InboxMessagesBloc>(
      () => _i51.InboxMessagesBloc(get<_i42.IInboxRepository>()));
  gh.factoryParam<_i52.PostCommentBloc, String?, dynamic>((postId, _) =>
      _i52.PostCommentBloc(
          commentService: get<_i11.ICommentService>(),
          cacheService: get<_i35.CacheService>(),
          postId: postId));
  gh.factory<_i53.PostContentBloc>(() => _i53.PostContentBloc(
      postService: get<_i29.PostService>(),
      cacheService: get<_i35.CacheService>()));
  gh.factory<_i54.SubredditBloc>(() =>
      _i54.SubredditBloc(subredditService: get<_i46.ISubredditService>()));
  gh.factory<_i55.TokenDioInterceptor>(() => _i55.TokenDioInterceptor(
      tokenCacheService: get<_i48.ITokenCacheService>()));
  gh.factory<_i56.ChangeCommunityAvatarBloc>(() =>
      _i56.ChangeCommunityAvatarBloc(
          communityService: get<_i46.ISubredditService>(),
          imageService: get<_i15.IImageService>()));
  gh.factoryParam<_i57.ChatBloc, String?, dynamic>((roomId, _) => _i57.ChatBloc(
      roomId: roomId,
      socketManager: get<_i23.ISocketManager>(),
      chatMessagesService: get<_i39.IChatMessagesService>()));
  gh.factory<_i58.ChatRoomsBloc>(() => _i58.ChatRoomsBloc(
      chatService: get<_i39.IChatMessagesService>(),
      socketManager: get<_i23.ISocketManager>()));
  gh.singleton<_i59.IAuthService>(_i60.AuthService(
      dio: get<_i3.Dio>(),
      tokenService: get<_i48.ITokenCacheService>(),
      googleAuthService: get<_i13.IGoogleAuthService>()));
  gh.lazySingleton<_i61.IFeedService>(
      () => _i62.FakeFeedService(tagger: get<_i44.IPostCacheTagger>()));
  gh.factory<_i63.AuthBloc>(
      () => _i63.AuthBloc(authService: get<_i59.IAuthService>()));
  gh.factory<_i64.FeedBloc>(
      () => _i64.FeedBloc(feedService: get<_i61.IFeedService>()));
  gh.factory<_i65.LoginFormBloc>(() => _i65.LoginFormBloc(
      authBloc: get<_i63.AuthBloc>(),
      authService: get<_i59.IAuthService>(),
      snackService: get<_i21.ISnackbarService>()));
  gh.factory<_i32.SignUpFormBloc>(() => _i32.SignUpFormBloc(
      authBloc: get<_i63.AuthBloc>(),
      authService: get<_i59.IAuthService>(),
      checker: get<_i25.IUserRemoteChecker>(),
      formatValidator: get<_i32.SignUpFormatValidator>(),
      snackbarService: get<_i21.ISnackbarService>()));
  return get;
}

class _$DioModule extends _i66.DioModule {}

class _$FirebaseModule extends _i66.FirebaseModule {}

class _$LocalNotificationsModule extends _i66.LocalNotificationsModule {}

class _$NavigatorKeyModule extends _i66.NavigatorKeyModule {}

class _$GoogleSignInModule extends _i66.GoogleSignInModule {}

class _$SharedPrefsModule extends _i66.SharedPrefsModule {}
