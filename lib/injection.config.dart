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
import 'package:shared_preferences/shared_preferences.dart' as _i32;

import '_presentation/core/scroll_controllers.dart' as _i8;
import '_presentation/user/user_panel_controller.dart' as _i34;
import 'application/auth/auth_bloc.dart' as _i65;
import 'application/auth/login_form/login_form_bloc.dart' as _i67;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i33;
import 'application/change_community_avatar/change_community_avatar_bloc.dart'
    as _i58;
import 'application/chat/chat/chat_bloc.dart' as _i59;
import 'application/chat/chat_rooms/chat_rooms_bloc.dart' as _i60;
import 'application/feed/feed_bloc.dart' as _i66;
import 'application/inbox/inbox_activities/inbox_activities_bloc.dart' as _i52;
import 'application/inbox/inbox_messages/inbox_messages_bloc.dart' as _i53;
import 'application/post/create_post/create_post_bloc.dart' as _i38;
import 'application/post/post_comment/post_comment_bloc.dart' as _i54;
import 'application/post/post_content/post_content_bloc.dart' as _i55;
import 'application/snackbar_service.dart' as _i23;
import 'application/subreddit/subreddit_bloc.dart' as _i56;
import 'application/voting/bloc/vote_bloc.dart' as _i35;
import 'domain/auth/i_auth_service.dart' as _i61;
import 'domain/auth/i_google_auth_service.dart' as _i14;
import 'domain/auth/i_user_remote_checker.dart' as _i26;
import 'domain/auth/token_cache_service.dart' as _i51;
import 'domain/chat/i_chat_cache.dart' as _i9;
import 'domain/comment/i_comment_service.dart' as _i12;
import 'domain/feed/i_feed_repository.dart' as _i42;
import 'domain/feed/i_feed_service.dart' as _i63;
import 'domain/i_image_service.dart' as _i16;
import 'domain/i_key_generator.dart' as _i18;
import 'domain/i_network_connectivity.dart' as _i20;
import 'domain/i_snackbar_service.dart' as _i22;
import 'domain/i_socket_manager.dart' as _i24;
import 'domain/i_token_cache_service.dart' as _i50;
import 'domain/inbox/i_inbox_repository.dart' as _i44;
import 'domain/post/i_post_cache_tagger.dart' as _i46;
import 'domain/subreddit/i_subreddit_service.dart' as _i48;
import 'domain/subreddit/subreddit_info.dart' as _i39;
import 'infastructure/auth/auth_service.dart' as _i62;
import 'infastructure/auth/google_auth_service.dart' as _i15;
import 'infastructure/auth/user_remote_checker.dart' as _i27;
import 'infastructure/chat/chat_cache.dart' as _i10;
import 'infastructure/chat/chat_messages_repository.dart' as _i40;
import 'infastructure/chat/chat_messages_service.dart' as _i41;
import 'infastructure/chat/chat_remote_source.dart' as _i11;
import 'infastructure/comment/fake_comment_service.dart' as _i13;
import 'infastructure/core/cache_service.dart' as _i36;
import 'infastructure/core/connectivity_dio_checker.dart' as _i37;
import 'infastructure/core/image_service.dart' as _i17;
import 'infastructure/core/network_connectivity.dart' as _i21;
import 'infastructure/core/simple_key_generator.dart' as _i19;
import 'infastructure/core/token_dio_interceptor.dart' as _i57;
import 'infastructure/feed/fake_feed_service.dart' as _i64;
import 'infastructure/feed/feed_repository.dart' as _i43;
import 'infastructure/inbox/inbox_remote_source.dart' as _i28;
import 'infastructure/inbox/inbox_repository.dart' as _i45;
import 'infastructure/notification/local_notifications_service.dart' as _i29;
import 'infastructure/notification/push_notification_service.dart' as _i31;
import 'infastructure/post/post_cache_tagger.dart' as _i47;
import 'infastructure/post/post_service.dart' as _i30;
import 'infastructure/socket_manager.dart' as _i25;
import 'infastructure/subreddit/subreddit_service.dart' as _i49;
import 'infastructure/third_party_modules.dart'
    as _i68; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i8.HomeControllerManager>(
      () => _i8.HomeControllerManager());
  gh.lazySingleton<_i9.IChatCache>(() => _i10.ChatCache());
  gh.lazySingleton<_i11.IChatRemoteSource>(
      () => _i11.ChatRemoteSource(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i12.ICommentService>(() => _i13.FakeCommentService());
  gh.lazySingleton<_i14.IGoogleAuthService>(
      () => _i15.GoogleAuthService(googleSignIn: get<_i7.GoogleSignIn>()));
  gh.lazySingleton<_i16.IImageService>(() => _i17.ImageService());
  gh.lazySingleton<_i18.IKeyGenerator>(() => _i19.SimpleTypeKeyGenerator());
  gh.singleton<_i20.INetworkConnectivity>(_i21.NetworkConnectivity());
  gh.lazySingleton<_i22.ISnackbarService>(() => _i23.SnackbarService());
  gh.singleton<_i24.ISocketManager>(_i25.SocketManager());
  gh.lazySingleton<_i26.IUserRemoteChecker>(() => _i27.UserRemoteChecker());
  gh.lazySingleton<_i28.InboxRemoteSource>(
      () => _i28.InboxRemoteSource(get<_i3.Dio>()));
  gh.lazySingleton<_i29.LocalNotificationsService>(() =>
      _i29.LocalNotificationsService(
          localNotifications: get<_i5.FlutterLocalNotificationsPlugin>()));
  gh.lazySingleton<_i30.PostService>(() => _i30.PostService());
  gh.lazySingleton<_i31.PushNotificationService>(() =>
      _i31.PushNotificationService(
          get<_i4.FirebaseMessaging>(), get<_i29.LocalNotificationsService>()));
  await gh.singletonAsync<_i32.SharedPreferences>(() => sharedPrefsModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i33.SignUpFormatValidator>(
      () => _i33.SignUpFormatValidator());
  gh.singleton<_i34.UserPanelController>(_i34.UserPanelController());
  gh.factoryParam<_i35.VoteBloc, int?, dynamic>(
      (upvotes, _) => _i35.VoteBloc(upvotes));
  gh.singleton<_i36.CacheService>(_i36.CacheService(
      keyGenerator: get<_i18.IKeyGenerator>(),
      prefs: get<_i32.SharedPreferences>()));
  gh.factory<_i37.ConnectivityDioChecker>(
      () => _i37.ConnectivityDioChecker(get<_i20.INetworkConnectivity>()));
  gh.factoryParam<_i38.CreatePostBloc, _i39.SubredditInfo?, dynamic>(
      (community, _) => _i38.CreatePostBloc(
          imageService: get<_i16.IImageService>(), community: community));
  gh.lazySingleton<_i40.IChatMessagesRepository>(() =>
      _i40.ChatMessagesRepository(
          remote: get<_i11.IChatRemoteSource>(),
          cache: get<_i9.IChatCache>(),
          network: get<_i20.INetworkConnectivity>()));
  gh.lazySingleton<_i41.IChatMessagesService>(() => _i41.ChatMessagesService(
      chatMessagesRepository: get<_i40.IChatMessagesRepository>()));
  gh.singleton<_i42.IFeedRepository>(_i43.FeedRepository(
      dio: get<_i3.Dio>(), network: get<_i20.INetworkConnectivity>()));
  gh.lazySingleton<_i44.IInboxRepository>(() => _i45.InboxRepository(
      inboxRemoteSource: get<_i28.InboxRemoteSource>(),
      connectivity: get<_i20.INetworkConnectivity>()));
  gh.lazySingleton<_i46.IPostCacheTagger>(
      () => _i47.PostCacheTagger(cacheService: get<_i36.CacheService>()));
  gh.lazySingleton<_i48.ISubredditService>(() => _i49.SubredditService(
      dio: get<_i3.Dio>(), tagger: get<_i46.IPostCacheTagger>()));
  gh.singleton<_i50.ITokenCacheService>(
      _i51.TokenCacheService(cacheService: get<_i36.CacheService>()));
  gh.factory<_i52.InboxActivitiesBloc>(
      () => _i52.InboxActivitiesBloc(get<_i44.IInboxRepository>()));
  gh.factory<_i53.InboxMessagesBloc>(
      () => _i53.InboxMessagesBloc(get<_i44.IInboxRepository>()));
  gh.factoryParam<_i54.PostCommentBloc, String?, dynamic>((postId, _) =>
      _i54.PostCommentBloc(
          commentService: get<_i12.ICommentService>(),
          cacheService: get<_i36.CacheService>(),
          postId: postId));
  gh.factory<_i55.PostContentBloc>(() => _i55.PostContentBloc(
      postService: get<_i30.PostService>(),
      cacheService: get<_i36.CacheService>()));
  gh.factory<_i56.SubredditBloc>(() =>
      _i56.SubredditBloc(subredditService: get<_i48.ISubredditService>()));
  gh.factory<_i57.TokenDioInterceptor>(() => _i57.TokenDioInterceptor(
      tokenCacheService: get<_i50.ITokenCacheService>()));
  gh.factory<_i58.ChangeCommunityAvatarBloc>(() =>
      _i58.ChangeCommunityAvatarBloc(
          communityService: get<_i48.ISubredditService>(),
          imageService: get<_i16.IImageService>()));
  gh.factoryParam<_i59.ChatBloc, String?, dynamic>((roomId, _) => _i59.ChatBloc(
      roomId: roomId,
      socketManager: get<_i24.ISocketManager>(),
      chatMessagesService: get<_i41.IChatMessagesService>()));
  gh.factory<_i60.ChatRoomsBloc>(() => _i60.ChatRoomsBloc(
      chatService: get<_i41.IChatMessagesService>(),
      socketManager: get<_i24.ISocketManager>()));
  gh.singleton<_i61.IAuthService>(_i62.AuthService(
      dio: get<_i3.Dio>(),
      tokenService: get<_i50.ITokenCacheService>(),
      googleAuthService: get<_i14.IGoogleAuthService>()));
  gh.lazySingleton<_i63.IFeedService>(
      () => _i64.FakeFeedService(tagger: get<_i46.IPostCacheTagger>()));
  gh.factory<_i65.AuthBloc>(
      () => _i65.AuthBloc(authService: get<_i61.IAuthService>()));
  gh.factory<_i66.FeedBloc>(
      () => _i66.FeedBloc(feedService: get<_i63.IFeedService>()));
  gh.factory<_i67.LoginFormBloc>(() => _i67.LoginFormBloc(
      authBloc: get<_i65.AuthBloc>(),
      authService: get<_i61.IAuthService>(),
      snackService: get<_i22.ISnackbarService>()));
  gh.factory<_i33.SignUpFormBloc>(() => _i33.SignUpFormBloc(
      authBloc: get<_i65.AuthBloc>(),
      authService: get<_i61.IAuthService>(),
      checker: get<_i26.IUserRemoteChecker>(),
      formatValidator: get<_i33.SignUpFormatValidator>(),
      snackbarService: get<_i22.ISnackbarService>()));
  return get;
}

class _$DioModule extends _i68.DioModule {}

class _$FirebaseModule extends _i68.FirebaseModule {}

class _$LocalNotificationsModule extends _i68.LocalNotificationsModule {}

class _$NavigatorKeyModule extends _i68.NavigatorKeyModule {}

class _$GoogleSignInModule extends _i68.GoogleSignInModule {}

class _$SharedPrefsModule extends _i68.SharedPrefsModule {}
