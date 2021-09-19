import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:reddit_clone/_presentation/core/constants/colors.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/feed/feed_bloc.dart';
import '../../../domain/feed/i_feed_service.dart';
import '../../../injection.dart';
import '../../../routes/app_router.gr.dart';
import '../../../utility/app_logger.dart';
import '../../core/app/extensions/string_fill_extension.dart';
import '../../core/app/search_bar_field.dart';
import '../../core/constants/assets.dart';
import '../../core/constants/ui.dart';
import '../../core/reusable/scaled_drawer.dart';
import '../../core/scroll_controllers.dart';
import 'home_tab_page.dart';
import 'news.dart';

class HomeNavPage extends StatefulWidget {
  // final Function? openDrawer;
  const HomeNavPage({
    Key? key,
    // required this.openDrawer,
  }) : super(key: key);

  @override
  _HomeNavPageState createState() => _HomeNavPageState();
}

class _HomeNavPageState extends State<HomeNavPage>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;
  @override
  void initState() {
    log.wtf('HomeNavPage init');
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    getIt<HomeControllerManager>().tabController = tabController;
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
    log.wtf('HomeNavPage disposed');
  }

  @override
  Widget build(BuildContext context) {
    final tabBarWidget = tabBar;

    return Scaffold(
      appBar: appBar(tabBarWidget, context),
      body: TabBarView(
        physics: UIConstants.physics,
        controller: tabController,
        children: [
          MultiProvider(
            providers: [
              BlocProvider(
                create: (context) => FeedBloc(
                  feedService: getIt<IFeedService>(),
                )..add(FeedEvent.fetchingStarted()),
              ),
              // Provider.value(value: scrollControllers)
            ],
            child: News(),
          ),
          // Provider.value(
          // value: scrollControllers,
          // child:
          HomeTabPage(),
          // ),
          Center(
              child: CircularProgressIndicator(
            // backgroundColor: Colors.orange,
            color: Colors.orange,
          )),
        ],
      ),
    );
  }

  TabBar get tabBar {
    return TabBar(
      controller: tabController,
      indicatorSize: TabBarIndicatorSize.label,
      labelPadding: const EdgeInsets.symmetric(horizontal: 10),
      tabs: [
        Tab(text: 'News'.fillN(3)),
        Tab(text: 'Home'.fillN(3)),
        Tab(text: 'Popular'.fillN(3)),
      ],
    );
  }

  PreferredSize appBar(TabBar tabBar, BuildContext context) {
    return PreferredSize(
      preferredSize:
          Size.fromHeight(kToolbarHeight + tabBar.preferredSize.height),
      child: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: AppBar(
          bottom: tabBar,
          leading: AppbarAvatar(),
          title: SearchBarField(
            hintText: 'Search',
            absorbing: true,
            onTap: () => AutoRouter.of(context).push(SearchRoute()),
          ),
          actions: [
            Center(
              child: GestureDetector(
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: SvgPicture.asset(Assets.play_button),
                ),
                onTap: () {
                  AutoRouter.of(context).push(ChangeCommunityAvatarRoute());
                },
              ),
            ),
            SizedBox(width: 5),
            Center(
              child: GestureDetector(
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: SvgPicture.asset(Assets.coin),
                ),
                onTap: () =>
                    context.read<AuthBloc>().add(AuthEvent.signedOut()),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AppbarAvatar extends StatelessWidget {
  const AppbarAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => context.read<MyDrawerController>().openDrawer(),
          child: Transform.scale(
            scale: 0.8,
            child: FittedBox(
              child: Badge(
                badgeColor: Colors.green,
                showBadge: state.maybeMap(
                  orElse: () => false,
                  authenticated: (s) => true,
                ),
                position: BadgePosition.bottomEnd(bottom: 2, end: 4),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                    state.maybeMap(
                        authenticated: (state) =>
                            'https://i.redd.it/26s9eejm8vz51.png',
                        orElse: () =>
                            'https://styles.redditmedia.com/t5_23ty4q/styles/profileIcon_vden2tg74d051.jpg?width=256&height=256&crop=256:256,smart&s=54e523221183c71419c0cadc616a13418f0c92ad'),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class NavigationItem {
  final Widget selectedIcon;
  final Widget unselectedIcon;
  final int index;

  const NavigationItem({
    required this.selectedIcon,
    required this.unselectedIcon,
    required this.index,
  });
}
