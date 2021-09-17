import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:reddit_clone/_presentation/auth/login_page.dart';
import 'package:reddit_clone/_presentation/core/scroll_controllers.dart';
import 'package:reddit_clone/_presentation/main_navigation_pages/browse/empty_page.dart';
import 'package:reddit_clone/_presentation/main_navigation_pages/home/home_nav_page.dart';
import 'package:reddit_clone/_presentation/post/post_page.dart';
import 'package:reddit_clone/_presentation/subreddit/subreddit_page.dart';
import 'package:reddit_clone/application/auth/login_form/login_form_bloc.dart';
import 'package:reddit_clone/application/bloc_providers/subreddit_bloc_provider.dart';
import 'package:reddit_clone/application/home_tab_page/feed_bloc.dart';
import 'package:reddit_clone/application/subreddit/subreddit_bloc.dart';
import 'package:reddit_clone/domain/auth/i_auth_service.dart';
import 'package:reddit_clone/domain/i_snackbar_service.dart';
import 'package:reddit_clone/domain/post/post_entry.dart';
import 'package:reddit_clone/domain/subreddit/i_subreddit_service.dart';
import 'package:reddit_clone/injection.dart';
import 'package:reddit_clone/routes.dart';
import 'package:reddit_clone/utility/app_logger.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../../application/auth/auth_bloc.dart';

class HomeNavigator extends StatefulWidget {
  const HomeNavigator({Key? key}) : super(key: key);

  @override
  _HomeNavigatorState createState() => _HomeNavigatorState();
}

class _HomeNavigatorState extends State<HomeNavigator>
// with AutomaticKeepAliveClientMixin
{
  final navigatorKey = GlobalKey<NavigatorState>();

  void _navigateTo(String route) {
    navigatorKey.currentState?.pushNamed(route);
  }

  @override
  void initState() {
    super.initState();
    log.wtf('HomeNavigator init');
  }

  @override
  void dispose() {
    super.dispose();
    log.wtf('HomeNavPage disposed');
  }

  @override
  Widget build(BuildContext context) {
    // final homeControllerManager = context.read<HomeControllerManager>();
    // super.build(context);
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case Routes.singlePostPage:
            final arguments = settings.arguments as Map<String, dynamic>;
            final bloc = arguments['homeTabBloc'] as FeedBloc;
            return MaterialPageRoute(
              builder: (context) => BlocProvider.value(
                value: bloc,
                child: PostPage(arguments['post'] as PostEntry),
              ),
              settings: settings,
            );
          case Routes.subredditPage:
            return MaterialPageRoute(
              builder: (context) => SubredditBlocProvider(),
              settings: settings,
            );
          case Routes.loginPage:
            return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  BlocProvider(
                create: (context) => LoginFormBloc(
                  authBloc: context.read<AuthBloc>(),
                  authService: getIt<IAuthService>(),
                  snackService: getIt<ISnackbarService>(),
                ),
                child: LoginPage(animation: animation),
              ),
              fullscreenDialog: true,
              transitionsBuilder: searchPageTransitionBuilder,
              transitionDuration: const Duration(milliseconds: 300),
              reverseTransitionDuration: const Duration(milliseconds: 300),
            );
          default:
            return MaterialPageRoute(
              builder: (context) {
                // return Provider.value(
                // value: homeControllerManager,
                // child:
                return HomeNavPage();
                // );
              },
            );
        }
      },
    );
  }

  // @override
  // bool get wantKeepAlive => true;
}
