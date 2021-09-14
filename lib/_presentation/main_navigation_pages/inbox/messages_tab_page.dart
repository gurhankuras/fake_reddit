import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:reddit_clone/_presentation/core/app/extensions/string_fill_extension.dart';
import 'package:reddit_clone/_presentation/core/refresh_widgets.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'package:reddit_clone/_presentation/core/constants/colors.dart';
import 'package:reddit_clone/_presentation/core/constants/ui.dart';
import 'package:reddit_clone/_presentation/core/reusable/app_header.dart';
import 'package:reddit_clone/_presentation/core/reusable/custom_app_tile.dart';

class MessagesTabPage extends StatefulWidget {
  const MessagesTabPage({Key? key}) : super(key: key);

  @override
  _MessagesTabPageState createState() => _MessagesTabPageState();
}

class _MessagesTabPageState extends State<MessagesTabPage> {
  late final RefreshController _refreshController;
  InboxMessage get fakeMessage => InboxMessage(
        createdAt: '2021-09-09T10:56:22.097',
        subredditName: 'welcomebot',
        title: 'Welcome to r/nextfuckinglevel!',
        text:
            'Welcome to Next Fucking Level! A community A community A communityA community',
      );
  @override
  void initState() {
    _refreshController = RefreshController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,

      // enablePullUp: true,
      header: RefresherHeader(),
      // footer: CustomRefresherFooter(),
      physics: UIConstants.physics,
      controller: _refreshController,
      onRefresh: () async {
        await Future.delayed(Duration(seconds: 2));
        _refreshController.refreshCompleted();
      },
      child: ListView.builder(
        physics: UIConstants.physics,
        itemBuilder: (context, index) => InboxMessageWidget(
          message: fakeMessage,
          hasRead: true,
        ),
        itemCount: 10,
      ),
    );
  }
}

class InboxMessageWidget extends StatelessWidget {
  final InboxMessage message;
  final bool hasRead;
  const InboxMessageWidget({
    Key? key,
    required this.message,
    this.hasRead = false,
  }) : super(key: key);

  DateTime? get toDate => DateTime.tryParse(message.createdAt);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.darkgreyBlack,
            width: 0.7,
          ),
        ),
      ),
      child: CustomAppTile(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        tileColor: AppColors.lightBlack,
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppHeaderText(
              message.subredditName.toSubreddit,
              color: hasRead ? Color(0xC5FF5252) : Colors.redAccent,
              fontSizeFactor: 0.7,
            ),
            FaIcon(
              FontAwesomeIcons.redditAlien,
              size: 15,
              color: hasRead ? Color(0xC5FF5252) : Colors.redAccent,
            ),
            AppHeaderText(
              ' • ${toDate != null ? timeago.format(toDate!, locale: 'en_short') : ""}',
              color:
                  hasRead ? AppColors.mmoreLightGrey : AppColors.moreLightGrey,
              fontSizeFactor: 0.65,
              fontWeightDelta: -2,
            ),
            Spacer(),
            Icon(
              Icons.more_horiz,
              size: 18,
            )
          ],
        ),
        subtitle: AppHeaderText(
          '${message.title}\n${message.text}',
          color: hasRead ? AppColors.iron : Colors.white,
          maxLines: 2,
          fontSizeFactor: 0.7,
          fontWeightDelta: -1,
        ),
      ),
    );
  }
}

class InboxMessage {
  final String subredditName;
  final String createdAt;
  final String title;
  final String text;
  InboxMessage({
    required this.subredditName,
    required this.createdAt,
    required this.title,
    required this.text,
  });
}
