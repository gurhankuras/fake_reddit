import 'package:flutter/material.dart';

import '../core/app/extensions/string_fill_extension.dart';
import '../core/constants/colors.dart';
import 'communities_tab_page.dart';
import 'custom_feeds_tab_page.dart';

class BrowsePage extends StatelessWidget {
  final void Function(String route) navigationHandler;
  const BrowsePage({
    Key? key,
    required this.navigationHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
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
            ),
            SliverPadding(
              // padding: EdgeInsets.all(4.0),
              padding: EdgeInsets.zero,
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.lightBlack,
                      border: Border(
                        bottom: BorderSide(
                            color: AppColors.lightBlack3, width: 0.8),
                      ),
                    ),
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: [
                        Tab(text: "Communities".fillN(4)),
                        Tab(text: "Custom Feeds".fillN(4)),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ];
        },
        body: TabBarView(
          children: [
            CommunitiesTabPage(navigationHandler: navigationHandler),
            CustomFeeds(),
          ],
        ),
      ),
    ));
  }
}
