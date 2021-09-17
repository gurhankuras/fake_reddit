import 'package:flutter/material.dart';

import '../../core/app/extensions/string_fill_extension.dart';
import '../../custom_scroll_view_with_tabbar.dart';
import 'communities_tab_page.dart';
import 'custom_feeds_tab_page.dart';

class BrowsePage extends StatelessWidget {
  // final void Function(String route) navigationHandler;
  const BrowsePage({
    Key? key,
    // required this.navigationHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollViewWithTabBar(
      // navigationHandler: navigationHandler,
      tabBarView: TabBarView(
        children: [
          CommunitiesTabPage(
              // navigationHandler: navigationHandler
              ),
          CustomFeedsTabPage(),
        ],
      ),
      tabTexts: ['Communities', 'Custom Feeds'],
    );
  }

  SliverAppBar sliverAppbar() {
    return SliverAppBar(
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          "Collapsing Toolbar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }

  TabBar tabBar() {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.label,
      tabs: [
        Tab(text: "Communities".fillN(4)),
        Tab(text: "Custom Feeds".fillN(4)),
      ],
    );
  }
}
