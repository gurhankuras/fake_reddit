import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:reddit_clone/_presentation/core/constants/assets.dart';
import 'package:reddit_clone/domain/feed/i_feed_service.dart';
import 'package:reddit_clone/infastructure/post/post_cache_tagger.dart';
import 'package:reddit_clone/injection.dart';

import '_presentation/core/app/extensions/string_fill_extension.dart';
import '_presentation/core/app/search_bar_field.dart';
import '_presentation/core/reusable/scaled_drawer.dart';
import '_presentation/core/scroll_controllers.dart';
import '_presentation/home/home_tab_page.dart';
import '_presentation/home/news.dart';
import 'application/auth/auth_bloc.dart';
import 'application/home_tab_page/feed_bloc.dart';
import 'infastructure/core/cache_service.dart';
import 'infastructure/feed/fake_feed_service.dart';
import 'routes.dart';

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
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    context.read<HomeControllerManager>().tabController = tabController;
  }

  @override
  Widget build(BuildContext context) {
    final scrollControllers = context.read<HomeControllerManager>();
    final tabBarWidget = tabBar;

    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     showSnack(message: 'hahahahaha', context: context);
      //   },
      // ),
      appBar: appBar(tabBarWidget, context),
      // backgroundColor: Colors.indigo[800],

      body: TabBarView(
        controller: tabController,
        children: [
          MultiProvider(
            providers: [
              BlocProvider(
                create: (context) => FeedBloc(
                  feedService: getIt<IFeedService>(),
                )..add(FeedEvent.fetchingStarted()),
              ),
              Provider.value(value: scrollControllers)
            ],
            child: News(),
          ),
          Provider.value(
            value: scrollControllers,
            child: HomeTabPage(),
          ),
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
          leading: GestureDetector(
            onTap: () => context.read<MyDrawerController>().openDrawer(),
            child: Transform.scale(
              scale: 0.8,
              child: FittedBox(
                  child: Badge(
                badgeColor: Colors.green,
                position: BadgePosition.bottomEnd(bottom: 2, end: 4),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                    'https://i.redd.it/26s9eejm8vz51.png',
                  ),
                ),
              )),
            ),
            // Stack(
            //   children: [
            //     // Transform.scale(
            //     // scale: 0.6,
            //     // child:
            //     Align(
            //       alignment: Alignment.center,
            //       child: const CircleAvatar(
            //         backgroundColor: Colors.transparent,
            //         backgroundImage: NetworkImage(
            //           'https://i.redd.it/26s9eejm8vz51.png',
            //         ),
            //       ),
            //     ),
            //     Align(
            //       alignment: Aig,
            //       child: Container(
            //         decoration: BoxDecoration(
            //           shape: BoxShape.circle,
            //           color: Colors.green,
            //         ),
            //         width: 10,
            //       ),
            //     )
            //   ],
            // ),
          ),
          title: SearchBarField(
            hintText: 'Search',
            absorbing: true,
            onTap: () => Navigator.of(context).pushNamed(Routes.searchPage),
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
                  // TODO: navigate to another page
                  Navigator.of(context)
                      .pushNamed(Routes.changeCommunityAvatarPage);
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
