import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:reddit_clone/_presentation/main_navigation_pages/browse/empty_page.dart';
import 'package:reddit_clone/_presentation/main_navigation_pages/inbox/epage.dart';
import 'package:reddit_clone/utility/log_init.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'package:reddit_clone/_presentation/core/app/extensions/string_fill_extension.dart';
import 'package:reddit_clone/_presentation/core/constants/colors.dart';
import 'package:reddit_clone/_presentation/core/constants/ui.dart';
import 'package:reddit_clone/_presentation/core/refresh_widgets.dart';
import 'package:reddit_clone/_presentation/core/reusable/app_header.dart';
import 'package:reddit_clone/_presentation/core/reusable/custom_app_tile.dart';
import 'package:reddit_clone/application/inbox/inbox_messages/inbox_messages_bloc.dart';
import 'package:reddit_clone/domain/inbox/inbox_message.dart';

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
        hasRead: true,
        id: '12345',
      );
  @override
  void initState() {
    logInit(MessagesTabPage);

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
      child: BlocBuilder<InboxMessagesBloc, InboxMessagesState>(
        builder: (context, state) {
          if (state.loading) {
            return CircularProgressIndicator();
          }
          if (state.failed) {
            return Center(
              child: Text('Failed'),
            );
          }

          final messages = state.messages;
          return ListView.builder(
            physics: UIConstants.physics,
            itemBuilder: (context, index) => InboxMessageWidget(
              message: messages[index],
            ),
            itemCount: messages.length,
          );
        },
      ),
    );
  }

  // @override
  // bool get wantKeepAlive => true;
}

class InboxMessageWidget extends StatelessWidget {
  final InboxMessage message;
  const InboxMessageWidget({
    Key? key,
    required this.message,
    // required this.onTap,
  }) : super(key: key);

  DateTime? get toDate => DateTime.tryParse(message.createdAt);

  @override
  Widget build(BuildContext context) {
    final hasRead = message.hasRead;
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
        onTap: () {
          if (!hasRead) {
            context
                .read<InboxMessagesBloc>()
                .add(InboxMessagesEvent.messageRead(message.id));
          }
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return EPage();
              },
            ),
          );
        },
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        tileColor: AppColors.lightBlack,
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,

          textBaseline: TextBaseline.ideographic,

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
