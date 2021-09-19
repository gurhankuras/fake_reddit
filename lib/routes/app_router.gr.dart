// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'dart:typed_data' as _i28;

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../_presentation/auth/login_page.dart' as _i3;
import '../_presentation/auth/sign_up_page.dart' as _i10;
import '../_presentation/change_community_avatar/change_community_avatar_page.dart'
    as _i12;
import '../_presentation/change_community_avatar/crop_image_page.dart' as _i13;
import '../_presentation/main_navigation_pages/browse/all_feed_page.dart'
    as _i25;
import '../_presentation/main_navigation_pages/browse/browse_page.dart' as _i23;
import '../_presentation/main_navigation_pages/browse/empty_page.dart' as _i18;
import '../_presentation/main_navigation_pages/browse/popular_feed_page.dart'
    as _i24;
import '../_presentation/main_navigation_pages/chat/chat_nav_page.dart' as _i20;
import '../_presentation/main_navigation_pages/chat/chat_page.dart' as _i14;
import '../_presentation/main_navigation_pages/home/home_nav_page.dart' as _i21;
import '../_presentation/main_navigation_pages/home/search_page.dart' as _i9;
import '../_presentation/main_navigation_pages/inbox/inbox_page.dart' as _i19;
import '../_presentation/post/create_post/create_feed_entry_overview_page.dart'
    as _i16;
import '../_presentation/post/create_post/create_post_editor_page.dart' as _i15;
import '../_presentation/post/create_post/create_post_page.dart' as _i11;
import '../_presentation/post/post_page.dart' as _i7;
import '../_presentation/search_community/post_feed_search_page.dart' as _i8;
import '../_presentation/settings/settings_panel.dart' as _i6;
import '../_presentation/splash/splash_page.dart' as _i5;
import '../_presentation/subreddit/subreddit_page.dart' as _i22;
import '../_presentation/wrapped_bottom_nav_page.dart' as _i17;
import '../domain/post/post_entry.dart' as _i26;
import '../domain/subreddit/subreddit_info.dart' as _i27;
import 'app_router.dart' as _i4;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.LoginPage();
        },
        transitionsBuilder: _i4.searchPageTransitionBuilder,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false),
    SplashRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.SplashPage();
        }),
    SettingsPanelRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SettingsPanelRouteArgs>();
          return _i6.SettingsPanelPage(key: args.key, page: args.page);
        }),
    PostRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<PostRouteArgs>();
          return _i7.PostPage(args.post, key: args.key);
        }),
    PostFeedSearchRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.PostFeedSearchPage();
        }),
    SearchRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i9.SearchPage();
        }),
    SignUpRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i10.SignUpPage();
        }),
    CreatePostRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CreatePostRouteArgs>();
          return _i11.CreatePostPage(key: args.key, community: args.community);
        }),
    ChangeCommunityAvatarRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i12.ChangeCommunityAvatarPage();
        }),
    CropSample.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CropSampleArgs>();
          return _i13.CropSample(key: args.key, fileAsBytes: args.fileAsBytes);
        }),
    ChatRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ChatRouteArgs>();
          return _i14.ChatPage(key: args.key, roomId: args.roomId);
        }),
    BottomNavRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    CreatePostEditorRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i15.CreatePostEditorPage();
        },
        transitionsBuilder: _i1.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false),
    CreatePostEntryOverviewRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CreatePostEntryOverviewRouteArgs>();
          return _i16.CreatePostEntryOverviewPage(
              key: args.key, community: args.community);
        },
        transitionsBuilder: _i1.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false),
    WrappedBottomNavRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i17.WrappedBottomNavPage();
        }),
    HomeRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    BrowseRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    MyEmptyRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i18.MyEmptyPage();
        }),
    InboxRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i19.InboxPage();
        }),
    ChatNavRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i20.ChatNavPage();
        }),
    HomeNavRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i21.HomeNavPage();
        }),
    SubredditRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i22.SubredditPage();
        }),
    BrowseRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i23.BrowsePage();
        }),
    PopularFeedRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i24.PopularFeedPage();
        }),
    AllFeedRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i25.AllFeedPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(LoginRoute.name, path: '/login'),
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(SettingsPanelRoute.name, path: '/settings'),
        _i1.RouteConfig(PostRoute.name, path: '/post'),
        _i1.RouteConfig(PostFeedSearchRoute.name, path: '/post-search'),
        _i1.RouteConfig(SearchRoute.name, path: '/search'),
        _i1.RouteConfig(SignUpRoute.name, path: '/signup'),
        _i1.RouteConfig(CreatePostRoute.name, path: '/create-post', children: [
          _i1.RouteConfig(CreatePostEditorRoute.name, path: ''),
          _i1.RouteConfig(CreatePostEntryOverviewRoute.name, path: 'overview')
        ]),
        _i1.RouteConfig(ChangeCommunityAvatarRoute.name,
            path: '/change-subreddit-avatar'),
        _i1.RouteConfig(CropSample.name, path: '/crop-image'),
        _i1.RouteConfig(ChatRoute.name, path: '/chat/:roomId'),
        _i1.RouteConfig(BottomNavRouter.name, path: '/main', children: [
          _i1.RouteConfig(WrappedBottomNavRoute.name, path: '', children: [
            _i1.RouteConfig(HomeRouter.name, path: 'home', children: [
              _i1.RouteConfig(HomeNavRoute.name, path: ''),
              _i1.RouteConfig(SubredditRoute.name, path: 'subreddit')
            ]),
            _i1.RouteConfig(BrowseRouter.name, path: 'browse', children: [
              _i1.RouteConfig(BrowseRoute.name, path: ''),
              _i1.RouteConfig(PopularFeedRoute.name, path: 'popular'),
              _i1.RouteConfig(AllFeedRoute.name, path: 'all')
            ]),
            _i1.RouteConfig(MyEmptyRoute.name, path: 'myempty'),
            _i1.RouteConfig(InboxRoute.name, path: 'inbox'),
            _i1.RouteConfig(ChatNavRoute.name, path: 'chat')
          ])
        ])
      ];
}

class LoginRoute extends _i1.PageRouteInfo<void> {
  const LoginRoute() : super(name, path: '/login');

  static const String name = 'LoginRoute';
}

class SplashRoute extends _i1.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class SettingsPanelRoute extends _i1.PageRouteInfo<SettingsPanelRouteArgs> {
  SettingsPanelRoute({_i2.Key? key, required _i2.Widget page})
      : super(name,
            path: '/settings',
            args: SettingsPanelRouteArgs(key: key, page: page));

  static const String name = 'SettingsPanelRoute';
}

class SettingsPanelRouteArgs {
  const SettingsPanelRouteArgs({this.key, required this.page});

  final _i2.Key? key;

  final _i2.Widget page;
}

class PostRoute extends _i1.PageRouteInfo<PostRouteArgs> {
  PostRoute({required _i26.PostEntry post, _i2.Key? key})
      : super(name, path: '/post', args: PostRouteArgs(post: post, key: key));

  static const String name = 'PostRoute';
}

class PostRouteArgs {
  const PostRouteArgs({required this.post, this.key});

  final _i26.PostEntry post;

  final _i2.Key? key;
}

class PostFeedSearchRoute extends _i1.PageRouteInfo<void> {
  const PostFeedSearchRoute() : super(name, path: '/post-search');

  static const String name = 'PostFeedSearchRoute';
}

class SearchRoute extends _i1.PageRouteInfo<void> {
  const SearchRoute() : super(name, path: '/search');

  static const String name = 'SearchRoute';
}

class SignUpRoute extends _i1.PageRouteInfo<void> {
  const SignUpRoute() : super(name, path: '/signup');

  static const String name = 'SignUpRoute';
}

class CreatePostRoute extends _i1.PageRouteInfo<CreatePostRouteArgs> {
  CreatePostRoute(
      {_i2.Key? key,
      required _i27.SubredditInfo community,
      List<_i1.PageRouteInfo>? children})
      : super(name,
            path: '/create-post',
            args: CreatePostRouteArgs(key: key, community: community),
            initialChildren: children);

  static const String name = 'CreatePostRoute';
}

class CreatePostRouteArgs {
  const CreatePostRouteArgs({this.key, required this.community});

  final _i2.Key? key;

  final _i27.SubredditInfo community;
}

class ChangeCommunityAvatarRoute extends _i1.PageRouteInfo<void> {
  const ChangeCommunityAvatarRoute()
      : super(name, path: '/change-subreddit-avatar');

  static const String name = 'ChangeCommunityAvatarRoute';
}

class CropSample extends _i1.PageRouteInfo<CropSampleArgs> {
  CropSample({_i2.Key? key, required _i28.Uint8List fileAsBytes})
      : super(name,
            path: '/crop-image',
            args: CropSampleArgs(key: key, fileAsBytes: fileAsBytes));

  static const String name = 'CropSample';
}

class CropSampleArgs {
  const CropSampleArgs({this.key, required this.fileAsBytes});

  final _i2.Key? key;

  final _i28.Uint8List fileAsBytes;
}

class ChatRoute extends _i1.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({_i2.Key? key, required String roomId})
      : super(name,
            path: '/chat/:roomId',
            args: ChatRouteArgs(key: key, roomId: roomId),
            rawPathParams: {});

  static const String name = 'ChatRoute';
}

class ChatRouteArgs {
  const ChatRouteArgs({this.key, required this.roomId});

  final _i2.Key? key;

  final String roomId;
}

class BottomNavRouter extends _i1.PageRouteInfo<void> {
  const BottomNavRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/main', initialChildren: children);

  static const String name = 'BottomNavRouter';
}

class CreatePostEditorRoute extends _i1.PageRouteInfo<void> {
  const CreatePostEditorRoute() : super(name, path: '');

  static const String name = 'CreatePostEditorRoute';
}

class CreatePostEntryOverviewRoute
    extends _i1.PageRouteInfo<CreatePostEntryOverviewRouteArgs> {
  CreatePostEntryOverviewRoute(
      {_i2.Key? key, required _i27.SubredditInfo community})
      : super(name,
            path: 'overview',
            args: CreatePostEntryOverviewRouteArgs(
                key: key, community: community));

  static const String name = 'CreatePostEntryOverviewRoute';
}

class CreatePostEntryOverviewRouteArgs {
  const CreatePostEntryOverviewRouteArgs({this.key, required this.community});

  final _i2.Key? key;

  final _i27.SubredditInfo community;
}

class WrappedBottomNavRoute extends _i1.PageRouteInfo<void> {
  const WrappedBottomNavRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '', initialChildren: children);

  static const String name = 'WrappedBottomNavRoute';
}

class HomeRouter extends _i1.PageRouteInfo<void> {
  const HomeRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

class BrowseRouter extends _i1.PageRouteInfo<void> {
  const BrowseRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'browse', initialChildren: children);

  static const String name = 'BrowseRouter';
}

class MyEmptyRoute extends _i1.PageRouteInfo<void> {
  const MyEmptyRoute() : super(name, path: 'myempty');

  static const String name = 'MyEmptyRoute';
}

class InboxRoute extends _i1.PageRouteInfo<void> {
  const InboxRoute() : super(name, path: 'inbox');

  static const String name = 'InboxRoute';
}

class ChatNavRoute extends _i1.PageRouteInfo<void> {
  const ChatNavRoute() : super(name, path: 'chat');

  static const String name = 'ChatNavRoute';
}

class HomeNavRoute extends _i1.PageRouteInfo<void> {
  const HomeNavRoute() : super(name, path: '');

  static const String name = 'HomeNavRoute';
}

class SubredditRoute extends _i1.PageRouteInfo<void> {
  const SubredditRoute() : super(name, path: 'subreddit');

  static const String name = 'SubredditRoute';
}

class BrowseRoute extends _i1.PageRouteInfo<void> {
  const BrowseRoute() : super(name, path: '');

  static const String name = 'BrowseRoute';
}

class PopularFeedRoute extends _i1.PageRouteInfo<void> {
  const PopularFeedRoute() : super(name, path: 'popular');

  static const String name = 'PopularFeedRoute';
}

class AllFeedRoute extends _i1.PageRouteInfo<void> {
  const AllFeedRoute() : super(name, path: 'all');

  static const String name = 'AllFeedRoute';
}
