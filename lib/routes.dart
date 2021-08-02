import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/_presentation/auth/auth_page.dart';
import 'package:reddit_clone/_presentation/splash/splash_page.dart';
import 'package:reddit_clone/domain/auth/sign_up_verificator.dart';
import 'package:reddit_clone/infastructure/auth/always_failing_auth_service.dart';
import 'package:reddit_clone/infastructure/auth/auth_service.dart';
import 'package:reddit_clone/main.dart';

import '_presentation/change_community_avatar/change_community_avatar_page.dart';
import '_presentation/change_community_avatar/crop_image_page.dart';
import '_presentation/post_feed/create_feed_entry_overview_page.dart';
import 'application/bloc/create_feed_bloc.dart';
import 'application/change_community_avatar/change_community_avatar_bloc.dart';
import 'application/main_page_bloc/main_page_bloc.dart';
import 'infastructure/image_service.dart';
import 'package:reddit_clone/main_page.dart';
import './application/auth/auth_bloc.dart';
import 'application/auth/sign_up_form/sign_up_form_bloc.dart';

import '_presentation/home/search_page.dart';
import '_presentation/feed_form/create_feed_entry_page.dart';
import '_presentation/search_community/post_feed_search_page.dart';
import 'domain/community.dart';
import 'home_page.dart';

abstract class Routes {
  static const homePage = '/homePage';
  static const mainPage = '/mainPage';
  static const splashPage = '/splash';
  static const signInUpPage = '/signInUpPage';
  static const postFeedSearchPage = '/postFeedSearchPage';
  static const searchPage = '/searchPage';
  static const createFeedPage = '/createFeedPage';
  static const createFeedOverviewPage = '/createFeedOverviewPage';
  static const changeCommunityAvatarPage = '/changeCommunityAvatarPage';
  static const cropImagePage = '/cropImagePage';
}

abstract class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.mainPage:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => MainPageBloc(context: context),
            child: const MainPage(),
          ),
          settings: settings,
        );
      case Routes.signInUpPage:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
            create: (context) => SignUpFormBloc(
              authBloc: context.read<AuthBloc>(),
              verificator: SignUpVerificator(),
              formatValidator: SignUpFormatValidator(),
            ),
            child: AuthPage(animation: animation),
          ),
          transitionsBuilder: searchPageTransitionBuilder,
          transitionDuration: const Duration(milliseconds: 300),
          reverseTransitionDuration: const Duration(milliseconds: 300),
        );
      // return MaterialPageRoute(
      //   builder: (_) => const AuthPage(),
      //   settings: settings,
      //   fullscreenDialog: true,
      // );
      case Routes.splashPage:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => AuthBloc(
              authService: ALWAYS_FAILING_AUTH
                  ? AlwaysFailingAuthService()
                  : AuthService(),
            )..add(const AuthEvent.gotUserSignedIn()),
            child: const SplashPage(),
          ),
          settings: settings,
        );
      case Routes.cropImagePage:
        return MaterialPageRoute<Uint8List>(
          builder: (context) => BlocProvider.value(
            value: context.read<ChangeCommunityAvatarBloc>(),
            child: CropSample(
              fileAsBytes: settings.arguments as Uint8List,
            ),
          ),
          settings: settings,
        );
      case Routes.homePage:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
          settings: settings,
        );
      case Routes.postFeedSearchPage:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: settings.arguments as MainPageBloc,
            child: const PostFeedSearchPage(),
          ),
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
          builder: (context) => BlocProvider(
            create: (context) => CreateFeedBloc(
              imageService: ImageService(),
              mainPageBloc: args.bloc,
            ),
            child: CreateFeedEntryPage(community: args.community),
          ),
          fullscreenDialog: true,
          settings: settings,
        );
      case Routes.createFeedOverviewPage:
        return MaterialPageRoute(
          builder: (context) => CreateFeedEntryOverviewPage(
              community: settings.arguments as Community),
          settings: settings,
        );
      case Routes.changeCommunityAvatarPage:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                ChangeCommunityAvatarBloc(imageService: ImageService()),
            child: const ChangeCommunityAvatarPage(),
          ),
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
  final MainPageBloc bloc;

  CreateFeedPageArguments(
    this.community,
    this.bloc,
  );
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

Widget loginSignUpTransitionBuider(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child) {
  var begin = Offset(0.0, 1);
  var end = Offset(0, 0);
  var tween = Tween(begin: begin, end: end);
  // final curvedAnimation =
  // CurvedAnimation(parent: animation, curve: Curves.easeInOut).drive(tween);
  var transitionAnimation =
      animation.drive(tween.chain(CurveTween(curve: Curves.easeInOut)));

  return SlideTransition(
    position: transitionAnimation,
    child: FadeTransition(
        opacity: animation.drive(
          Tween(begin: 0.0, end: 1),
        ),
        child: child),
  );
}
