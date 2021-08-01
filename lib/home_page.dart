import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reddit_clone/_presentation/home/home_tab_page.dart';
import 'package:reddit_clone/application/main_page_bloc/main_page_bloc.dart';

import 'application/auth/auth_bloc.dart';
import '_presentation/core/app/extensions/string_fill_extension.dart';
import '_presentation/core/app/search_bar_field.dart';
import '_presentation/core/reusable/scaled_drawer.dart';
import '_presentation/home/news.dart';
import 'routes.dart';

class HomePage extends StatefulWidget {
  // final Function? openDrawer;
  const HomePage({
    Key? key,
    // required this.openDrawer,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    print(context.read<MainPageBloc>());

    final tabBarWidget = tabBar;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: appBar(tabBarWidget, context),
        // backgroundColor: Colors.indigo[800],

        body: const TabBarView(
          children: [
            News(),
            HomeTabPage(),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }

  TabBar get tabBar {
    return TabBar(
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
              scale: 0.6,
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://styles.redditmedia.com/t5_23ty4q/styles/profileIcon_vden2tg74d051.jpg?width=256&height=256&crop=256:256,smart&s=54e523221183c71419c0cadc616a13418f0c92ad',
                ),
              ),
            ),
          ),
          title: SearchBarField(
            hintText: 'Search',
            absorbing: true,
            onTap: () => Navigator.of(context).pushNamed(Routes.searchPage),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: GestureDetector(
                child: const Icon(Icons.play_circle),
                onTap: () {
                  // TODO: navigate to another page
                  Navigator.of(context)
                      .pushNamed(Routes.changeCommunityAvatarPage);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: GestureDetector(
                  child: const Icon(Icons.monetization_on),
                  onTap: () =>
                      context.read<AuthBloc>().add(AuthEvent.signedOut())),
            )
          ],
        ),
      ),
    );
  }
}

class NavigationItem {
  final Icon selectedIcon;
  final Icon unselectedIcon;
  final int index;

  const NavigationItem({
    required this.selectedIcon,
    required this.unselectedIcon,
    required this.index,
  });
}
