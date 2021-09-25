import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../_presentation/auth/login_page.dart';
import '../_presentation/auth/sign_up_page.dart';
import '../_presentation/change_community_avatar/change_community_avatar_page.dart';
import '../_presentation/change_community_avatar/crop_image_page.dart';
import '../_presentation/main_navigation_pages/browse/all_feed_page.dart';
import '../_presentation/main_navigation_pages/browse/browse_page.dart';
import '../_presentation/main_navigation_pages/browse/empty_page.dart';
import '../_presentation/main_navigation_pages/browse/popular_feed_page.dart';
import '../_presentation/main_navigation_pages/chat/chat_nav_page.dart';
import '../_presentation/main_navigation_pages/chat/chat_page.dart';
import '../_presentation/main_navigation_pages/home/home_nav_page.dart';
import '../_presentation/main_navigation_pages/home/search_page.dart';
import '../_presentation/main_navigation_pages/inbox/inbox_page.dart';
import '../_presentation/post/create_post/create_feed_entry_overview_page.dart';
import '../_presentation/post/create_post/create_post_editor_page.dart';
import '../_presentation/post/create_post/create_post_page.dart';
import '../_presentation/post/post_page.dart';
import '../_presentation/search_community/post_feed_search_page.dart';
import '../_presentation/settings/settings_panel.dart';
import '../_presentation/splash/splash_page.dart';
import '../_presentation/subreddit/subreddit_page.dart';
import '../_presentation/wrapped_bottom_nav_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      path: '/login',
      page: LoginPage,
      durationInMilliseconds: 300,
      transitionsBuilder: searchPageTransitionBuilder,
    ),

    AutoRoute(path: '/', page: SplashPage, initial: true),
    AutoRoute(path: '/settings', page: SettingsPanelPage),
    AutoRoute(path: '/post', page: PostPage),
    AutoRoute(path: '/post-search', page: PostFeedSearchPage),
    AutoRoute(path: '/search', page: SearchPage),
    AutoRoute(path: '/signup', page: SignUpPage),
    AutoRoute(
      path: '/create-post',
      page: CreatePostPage,
      children: [
        CustomRoute(
          page: CreatePostEditorPage,
          path: '',
        ),
        CustomRoute(
          path: 'overview',
          page: CreatePostEntryOverviewPage,
        ),
      ],
    ),

    AutoRoute(
        path: '/change-subreddit-avatar', page: ChangeCommunityAvatarPage),

    // AutoRoute(path: '/subreddit', page: SubredditPage),
    AutoRoute(path: '/crop-image', page: CropSample),
    // AutoRoute(path: '/crop-image', page: CropSample),
    AutoRoute(path: '/chat/:roomId', page: ChatPage),

    // AutoRoute(path: '/login', page: LoginPage),
    AutoRoute(
      path: '/main',
      // page: WrappedBottomNavPage,
      name: 'BottomNavRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(
          page: WrappedBottomNavPage,
          path: '',
          children: [
            AutoRoute(
              path: 'home',
              name: 'HomeRouter',
              page: EmptyRouterPage,
              children: [
                AutoRoute(
                  path: '',
                  page: HomeNavPage,
                ),
                AutoRoute(
                  path: 'subreddit',
                  page: SubredditPage,
                ),
              ],
            ),
            AutoRoute(
              path: 'browse',
              name: 'BrowseRouter',
              page: EmptyRouterPage,
              children: [
                AutoRoute(path: '', page: BrowsePage),
                AutoRoute(path: 'popular', page: PopularFeedPage),
                AutoRoute(path: 'all', page: AllFeedPage),
              ],
            ),
            AutoRoute(page: MyEmptyPage, path: 'myempty'),
            AutoRoute(path: 'inbox', page: InboxPage),
            AutoRoute(path: 'chat', page: ChatNavPage),
          ],
        ),
      ],
    ),

    // AutoRoute(page: BookDetailsPage),
  ],
)
class $AppRouter {}

//  case Routes.loginPage:
//         return PageRouteBuilder(
//           pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
//             create: (context) => LoginFormBloc(
//               authBloc: context.read<AuthBloc>(),
//               authService: getIt<IAuthService>(),
//               snackService: getIt<ISnackbarService>(),
//             ),
//             child: LoginPage(animation: animation),
//           ),
//           fullscreenDialog: true,
//           transitionsBuilder: searchPageTransitionBuilder,
//           transitionDuration: const Duration(milliseconds: 300),
//           reverseTransitionDuration: const Duration(milliseconds: 300),
//         );

Route<T> myCustomRouteBuilder<T>(
    BuildContext context, Widget child, CustomPage<T> page) {
  return PageRouteBuilder(
    fullscreenDialog: page.fullscreenDialog,
    // this is important
    settings: page,
    pageBuilder: (context, animation, secondaryAnimation) =>
        searchPageTransitionBuilder(
            context, animation, secondaryAnimation, child),
  );
}

Widget searchPageTransitionBuilder(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) {
  var begin = 0.0;
  var end = 1.0;
  var tween = Tween(begin: begin, end: end);
  var opacityAnimation = animation.drive(tween);

  return FadeTransition(
    opacity: opacityAnimation,
    child: child,
  );
}
