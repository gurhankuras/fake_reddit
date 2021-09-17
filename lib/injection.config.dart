// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:firebase_messaging/firebase_messaging.dart' as _i4;
import 'package:flutter/material.dart' as _i57;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i61;

import '_presentation/user/user_panel_controller.dart' as _i62;
import 'application/auth/auth_bloc.dart' as _i53;
import 'application/auth/login_form/login_form_bloc.dart' as _i56;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i26;
import 'application/bloc/create_feed_bloc.dart' as _i30;
import 'application/change_community_avatar/change_community_avatar_bloc.dart'
    as _i47;
import 'application/chat/chat/chat_bloc.dart' as _i48;
import 'application/chat/chat_rooms/chat_rooms_bloc.dart' as _i50;
import 'application/home_tab_page/feed_bloc.dart' as _i55;
import 'application/inbox/inbox_activities/inbox_activities_bloc.dart' as _i40;
import 'application/inbox/inbox_messages/inbox_messages_bloc.dart' as _i41;
import 'application/navigation_service.dart' as _i60;
import 'application/post/post_comment/post_comment_bloc.dart' as _i42;
import 'application/post/post_content/post_content_bloc.dart' as _i43;
import 'application/snackbar_service.dart' as _i19;
import 'application/subreddit/subreddit_bloc.dart' as _i44;
import 'application/voting/bloc/vote_bloc.dart' as _i27;
import 'domain/auth/i_auth_service.dart' as _i54;
import 'domain/auth/i_google_auth_service.dart' as _i12;
import 'domain/auth/i_user_remote_checker.dart' as _i20;
import 'domain/auth/token_cache_service.dart' as _i65;
import 'domain/chat/i_chat_cache.dart' as _i7;
import 'domain/comment/i_comment_service.dart' as _i10;
import 'domain/feed/i_feed_repository.dart' as _i63;
import 'domain/feed/i_feed_service.dart' as _i51;
import 'domain/i_image_service.dart' as _i14;
import 'domain/i_key_generator.dart' as _i16;
import 'domain/i_network_connectivity.dart' as _i29;
import 'domain/i_snackbar_service.dart' as _i18;
import 'domain/i_socket_manager.dart' as _i49;
import 'domain/i_token_cache_service.dart' as _i46;
import 'domain/inbox/i_inbox_repository.dart' as _i33;
import 'domain/post/i_post_cache_tagger.dart' as _i35;
import 'domain/subreddit/i_subreddit_service.dart' as _i38;
import 'infastructure/auth/auth_service.dart' as _i66;
import 'infastructure/auth/google_auth_service.dart' as _i13;
import 'infastructure/auth/user_remote_checker.dart' as _i21;
import 'infastructure/chat/chat_cache.dart' as _i8;
import 'infastructure/chat/chat_messages_repository.dart' as _i31;
import 'infastructure/chat/chat_messages_service.dart' as _i32;
import 'infastructure/chat/chat_remote_source.dart' as _i9;
import 'infastructure/comment/fake_comment_service.dart' as _i11;
import 'infastructure/core/cache_service.dart' as _i37;
import 'infastructure/core/connectivity_dio_checker.dart' as _i28;
import 'infastructure/core/image_service.dart' as _i15;
import 'infastructure/core/network_connectivity.dart' as _i58;
import 'infastructure/core/simple_key_generator.dart' as _i17;
import 'infastructure/core/token_dio_interceptor.dart' as _i45;
import 'infastructure/feed/fake_feed_service.dart' as _i52;
import 'infastructure/feed/feed_repository.dart' as _i64;
import 'infastructure/inbox/inbox_remote_source.dart' as _i22;
import 'infastructure/inbox/inbox_repository.dart' as _i34;
import 'infastructure/notification/local_notifications_service.dart' as _i23;
import 'infastructure/notification/push_notification_service.dart' as _i25;
import 'infastructure/post/post_cache_tagger.dart' as _i36;
import 'infastructure/post/post_service.dart' as _i24;
import 'infastructure/socket_manager.dart' as _i59;
import 'infastructure/subreddit/subreddit_service.dart' as _i39;
import 'infastructure/third_party_modules.dart'
    as _i67; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i10.ICommentService>(() => _i11.FakeCommentService());
  gh.lazySingleton<_i12.IGoogleAuthService>(
      () => _i13.GoogleAuthService(googleSignIn: get<_i6.GoogleSignIn>()));
  gh.lazySingleton<_i14.IImageService>(() => _i15.ImageService());
  gh.lazySingleton<_i16.IKeyGenerator>(() => _i17.SimpleTypeKeyGenerator());
  gh.lazySingleton<_i18.ISnackbarService>(() => _i19.SnackbarService());
  gh.lazySingleton<_i20.IUserRemoteChecker>(() => _i21.UserRemoteChecker());
  gh.lazySingleton<_i22.InboxRemoteSource>(
      () => _i22.InboxRemoteSource(get<_i3.Dio>()));
  gh.lazySingleton<_i23.LocalNotificationsService>(() =>
      _i23.LocalNotificationsService(
          localNotifications: get<_i5.FlutterLocalNotificationsPlugin>()));
  gh.lazySingleton<_i24.PostService>(() => _i24.PostService());
  gh.lazySingleton<_i25.PushNotificationService>(() =>
      _i25.PushNotificationService(
          get<_i4.FirebaseMessaging>(), get<_i23.LocalNotificationsService>()));
  gh.lazySingleton<_i26.SignUpFormatValidator>(
      () => _i26.SignUpFormatValidator());
  gh.factoryParam<_i27.VoteBloc, int?, dynamic>(
      (upvotes, _) => _i27.VoteBloc(upvotes));
  gh.factory<_i28.ConnectivityDioChecker>(
      () => _i28.ConnectivityDioChecker(get<_i29.INetworkConnectivity>()));
  gh.factory<_i30.CreateFeedBloc>(
      () => _i30.CreateFeedBloc(imageService: get<_i14.IImageService>()));
  gh.lazySingleton<_i31.IChatMessagesRepository>(() =>
      _i31.ChatMessagesRepository(
          remote: get<_i9.IChatRemoteSource>(),
          cache: get<_i7.IChatCache>(),
          network: get<_i29.INetworkConnectivity>()));
  gh.lazySingleton<_i32.IChatMessagesService>(() => _i32.ChatMessagesService(
      chatMessagesRepository: get<_i31.IChatMessagesRepository>()));
  gh.lazySingleton<_i33.IInboxRepository>(() => _i34.InboxRepository(
      inboxRemoteSource: get<_i22.InboxRemoteSource>(),
      connectivity: get<_i29.INetworkConnectivity>()));
  gh.lazySingleton<_i35.IPostCacheTagger>(
      () => _i36.PostCacheTagger(cacheService: get<_i37.CacheService>()));
  gh.lazySingleton<_i38.ISubredditService>(() => _i39.SubredditService(
      dio: get<_i3.Dio>(), tagger: get<_i35.IPostCacheTagger>()));
  gh.factory<_i40.InboxActivitiesBloc>(
      () => _i40.InboxActivitiesBloc(get<_i33.IInboxRepository>()));
  gh.factory<_i41.InboxMessagesBloc>(
      () => _i41.InboxMessagesBloc(get<_i33.IInboxRepository>()));
  gh.factoryParam<_i42.PostCommentBloc, String?, dynamic>((postId, _) =>
      _i42.PostCommentBloc(
          commentService: get<_i10.ICommentService>(),
          cacheService: get<_i37.CacheService>(),
          postId: postId));
  gh.factory<_i43.PostContentBloc>(() => _i43.PostContentBloc(
      postService: get<_i24.PostService>(),
      cacheService: get<_i37.CacheService>()));
  gh.factory<_i44.SubredditBloc>(() =>
      _i44.SubredditBloc(subredditService: get<_i38.ISubredditService>()));
  gh.factory<_i45.TokenDioInterceptor>(() => _i45.TokenDioInterceptor(
      tokenCacheService: get<_i46.ITokenCacheService>()));
  gh.factory<_i47.ChangeCommunityAvatarBloc>(() =>
      _i47.ChangeCommunityAvatarBloc(
          communityService: get<_i38.ISubredditService>(),
          imageService: get<_i14.IImageService>()));
  gh.factoryParam<_i48.ChatBloc, String?, dynamic>((roomId, _) => _i48.ChatBloc(
      roomId: roomId,
      socketManager: get<_i49.ISocketManager>(),
      chatMessagesService: get<_i32.IChatMessagesService>()));
  gh.factory<_i50.ChatRoomsBloc>(() => _i50.ChatRoomsBloc(
      chatService: get<_i32.IChatMessagesService>(),
      socketManager: get<_i49.ISocketManager>()));
  gh.lazySingleton<_i51.IFeedService>(
      () => _i52.FakeFeedService(tagger: get<_i35.IPostCacheTagger>()));
  gh.factory<_i53.AuthBloc>(
      () => _i53.AuthBloc(authService: get<_i54.IAuthService>()));
  gh.factory<_i55.FeedBloc>(
      () => _i55.FeedBloc(feedService: get<_i51.IFeedService>()));
  gh.factory<_i56.LoginFormBloc>(() => _i56.LoginFormBloc(
      authBloc: get<_i53.AuthBloc>(),
      authService: get<_i54.IAuthService>(),
      snackService: get<_i18.ISnackbarService>()));
  gh.factory<_i26.SignUpFormBloc>(() => _i26.SignUpFormBloc(
      authBloc: get<_i53.AuthBloc>(),
      authService: get<_i54.IAuthService>(),
      checker: get<_i20.IUserRemoteChecker>(),
      formatValidator: get<_i26.SignUpFormatValidator>(),
      snackbarService: get<_i18.ISnackbarService>()));
  gh.singleton<_i57.GlobalKey<_i57.NavigatorState>>(
      navigatorKeyModule.navigatorKey);
  gh.singleton<_i29.INetworkConnectivity>(_i58.NetworkConnectivity());
  gh.singleton<_i49.ISocketManager>(_i59.SocketManager());
  gh.singleton<_i60.NavigationService>(_i60.NavigationService());
  await gh.singletonAsync<_i61.SharedPreferences>(() => sharedPrefsModule.prefs,
      preResolve: true);
  gh.singleton<_i62.UserPanelController>(_i62.UserPanelController());
  gh.singleton<_i37.CacheService>(_i37.CacheService(
      keyGenerator: get<_i16.IKeyGenerator>(),
      prefs: get<_i61.SharedPreferences>()));
  gh.singleton<_i63.IFeedRepository>(_i64.FeedRepository(
      dio: get<_i3.Dio>(), network: get<_i29.INetworkConnectivity>()));
  gh.singleton<_i46.ITokenCacheService>(
      _i65.TokenCacheService(cacheService: get<_i37.CacheService>()));
  gh.singleton<_i54.IAuthService>(_i66.AuthService(
      dio: get<_i3.Dio>(),
      tokenService: get<_i46.ITokenCacheService>(),
      googleAuthService: get<_i12.IGoogleAuthService>()));
  return get;
}

class _$DioModule extends _i67.DioModule {}

class _$FirebaseModule extends _i67.FirebaseModule {}

class _$LocalNotificationsModule extends _i67.LocalNotificationsModule {}

class _$NavigatorKeyModule extends _i67.NavigatorKeyModule {}

class _$GoogleSignInModule extends _i67.GoogleSignInModule {}

class _$SharedPrefsModule extends _i67.SharedPrefsModule {}
