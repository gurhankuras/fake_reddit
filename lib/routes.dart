import 'package:flutter/material.dart';
import 'package:reddit_clone/_presentation/change_community_avatar_page.dart';
import 'package:reddit_clone/main_page.dart';

import '_presentation/home/search_page.dart';
import '_presentation/post_feed/create_feed_entry_page/create_feed_entry_page.dart';
import '_presentation/post_feed/search_page/post_feed_search_page.dart';
import 'domain/community.dart';
import 'home_page.dart';

abstract class Routes {
  static const homePage = '/homePage';
  static const mainPage = '/';
  static const postFeedSearchPage = '/postFeedSearchPage';
  static const searchPage = '/searchPage';
  static const createFeedPage = '/createFeedPage';
  static const changeCommunityAvatarPage = '/changeCommunityAvatarPage';
}

abstract class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.mainPage:
        return MaterialPageRoute(
          builder: (_) => const MainPage(),
          settings: settings,
        );
      case Routes.homePage:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
          settings: settings,
        );
      case Routes.postFeedSearchPage:
        return MaterialPageRoute(
          builder: (_) => const PostFeedSearchPage(),
          settings: settings,
        );
      case Routes.searchPage:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const SearchPage(),
          transitionsBuilder: searchPageTransitionBuilder,
          transitionDuration: const Duration(milliseconds: 150),
          reverseTransitionDuration: const Duration(milliseconds: 150),
        );
      case Routes.createFeedPage:
        final args = settings.arguments as CreateFeedPageArguments;
        return MaterialPageRoute(
          builder: (context) => CreateFeedEntryPage(community: args.community),
          fullscreenDialog: true,
          settings: settings,
        );
      case Routes.changeCommunityAvatarPage:
        return MaterialPageRoute(
          builder: (_) => const ChangeCommunityAvatarPage(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
          settings: settings,
        );
    }
  }
}

class CreateFeedPageArguments {
  final Community community;

  CreateFeedPageArguments(this.community);
}

Widget searchPageTransitionBuilder(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child) {
  var begin = 0.0;
  var end = 1.0;
  var tween = Tween(begin: begin, end: end);
  var opacityAnimation = animation.drive(tween);

  return FadeTransition(
    opacity: opacityAnimation,
    child: child,
  );
}
