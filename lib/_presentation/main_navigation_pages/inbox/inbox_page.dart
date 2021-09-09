import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/app/extensions/string_fill_extension.dart';
import '../../core/reusable/scaled_drawer.dart';
import 'activity_tab_page_logged_in.dart';
import 'messages_tab_page.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: appBar(tabBar, context),
        body: TabBarView(children: tabPages),
      ),
    );
  }

  List<Widget> get tabPages => [
        // ActivityTabPage(),
        ActivityTabPageLoggedIn(),
        MessagesTabPage(),
      ];

  TabBar get tabBar {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.label,
      tabs: [
        Tab(text: 'Activity'.fillN(3)),
        Tab(text: 'Messages'.fillN(3)),
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
          centerTitle: true,
          title: Text(
            'Inbox',
            style: Theme.of(context)
                .textTheme
                .bodyText1
                ?.apply(fontSizeFactor: 1.2),
          ),
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
        ),
      ),
    );
  }
}
