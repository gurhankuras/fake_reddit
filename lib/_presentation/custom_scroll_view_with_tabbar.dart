import 'package:flutter/material.dart';

import 'core/app/extensions/string_fill_extension.dart';
import 'core/constants/colors.dart';

class CustomScrollViewWithTabBar extends StatelessWidget {
  // final void Function(String route) navigationHandler;
  final TabBarView tabBarView;
  final List<String> tabTexts;
  const CustomScrollViewWithTabBar({
    Key? key,
    // required this.navigationHandler,
    required this.tabBarView,
    required this.tabTexts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: tabTexts.length,
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                sliverAppbar(),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.lightBlack,
                        border: Border(
                          bottom: BorderSide(
                              color: AppColors.lightBlack3, width: 0.8),
                        ),
                      ),
                      child: tabBar(),
                    ),
                  ]),
                ),
              ];
            },
            body: tabBarView),
      ),
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
      tabs: tabTexts.map((text) => Tab(text: text.fillN(4))).toList(),
    );
  }
}
