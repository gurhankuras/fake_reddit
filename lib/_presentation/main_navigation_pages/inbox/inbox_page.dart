import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/_presentation/core/constants/ui.dart';
import 'package:reddit_clone/application/notification/bloc/notification_bloc.dart';

import '../../core/app/extensions/string_fill_extension.dart';
import '../../core/reusable/scaled_drawer.dart';
import 'activity_tab_page_logged_in.dart';
import 'messages_tab_page.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  _InboxPageState createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: appBar(tabBar, context),
        body: TabBarView(
          children: tabPages,
          physics: UIConstants.physics,
        ),
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
        Tab(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Activity'.fillN(1)),
              BlocSelector<NotificationBloc, NotificationState, int>(
                selector: (state) {
                  return state.unreadActivitiesCount;
                },
                builder: (context, unreadActivitiesCount) {
                  return Badge(
                    animationType: BadgeAnimationType.fade,
                    badgeContent: Text(
                      unreadActivitiesCount > 99
                          ? '+99'
                          : unreadActivitiesCount.toString(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        Tab(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Messages'.fillN(1)),
              BlocSelector<NotificationBloc, NotificationState, int>(
                selector: (state) {
                  return state.inboxUnreadMessageCount;
                },
                builder: (context, inboxUnreadMessageCount) {
                  return Badge(
                    animationType: BadgeAnimationType.fade,
                    badgeContent: Text(
                      inboxUnreadMessageCount > 99
                          ? '+99'
                          : inboxUnreadMessageCount.toString(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
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
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.more_horiz),
              ),
            )
          ],
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

  @override
  bool get wantKeepAlive => true;
}
