import 'package:badges/badges.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/_presentation/core/constants/ui.dart';
import 'package:reddit_clone/_presentation/main_navigation_pages/home/home_nav_page.dart';
import 'package:reddit_clone/application/inbox/inbox_activities/inbox_activities_bloc.dart';
import 'package:reddit_clone/application/inbox/inbox_messages/inbox_messages_bloc.dart';
import 'package:reddit_clone/application/notification/bloc/notification_bloc.dart';
import 'package:reddit_clone/domain/i_network_connectivity.dart';
import 'package:reddit_clone/infastructure/inbox/inbox_remote_source.dart';
import 'package:reddit_clone/infastructure/inbox/inbox_repository.dart';
import 'package:reddit_clone/injection.dart';
import 'package:reddit_clone/utility/log_init.dart';

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
  void initState() {
    logInit(InboxPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('BUILD ETTI');
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: appBar(tabBar, context),
        body: TabBarView(
          children: [
            BlocProvider(
              // TODO: register to get_it
              create: (context) => InboxActivitiesBloc(
                InboxRepository(
                  inboxRemoteSource: InboxRemoteSource(getIt<Dio>()),
                  connectivity: getIt<INetworkConnectivity>(),
                ),
              )..add(InboxActivitiesEvent.fetchingStarted()),
              child: ActivityTabPageLoggedIn(),
            ),
            BlocProvider(
              create: (context) => InboxMessagesBloc(
                InboxRepository(
                  inboxRemoteSource: InboxRemoteSource(getIt<Dio>()),
                  connectivity: getIt<INetworkConnectivity>(),
                ),
              )..add(InboxMessagesEvent.fetchingStarted()),
              child: MessagesTabPage(),
            ),
          ],
          physics: UIConstants.physics,
        ),
      ),
    );
  }

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
          leading: AppbarAvatar(),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  // @override
  // bool get wantKeepAlive => true;
}
