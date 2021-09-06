import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../application/notification/bloc/notification_bloc.dart';
import '../../routes.dart';
import '../core/constants/colors.dart';
import '../core/constants/ui.dart';
import '../core/reusable/app_header.dart';

const _kChatListTextColor = AppColors.lightGrey;

class ChatNavPage extends StatelessWidget {
  const ChatNavPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chats = [
      ChatItem(
        idF: '123456789',
        title: 'reddit_chat_feedback',
        subtitle: 'You: asadasdas',
        image:
            'https://pbs.twimg.com/profile_images/1333471260483801089/OtTAJXEZ.jpg',
        date: '4:40 PM',
      ),
      ChatItem(
        idF: '1234567890',
        title: 'reddit_chat_feedback',
        subtitle: 'You: asadasdas',
        image:
            'https://pbs.twimg.com/profile_images/1333471260483801089/OtTAJXEZ.jpg',
        date: '4:40 PM',
      ),
      ChatItem(
        idF: '123',
        title: 'reddit_chat_feedback',
        subtitle: 'You: asadasdas',
        image:
            'https://pbs.twimg.com/profile_images/1333471260483801089/OtTAJXEZ.jpg',
        date: '4:40 PM',
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AppHeaderText(
          'Chat',
          fontSizeFactor: 0.85,
          fontWeightDelta: 0,
        ),
        actions: [
          Center(
            child: FaIcon(FontAwesomeIcons.commentMedical),
          )
        ],
      ),
      body: BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
          return ListView.builder(
            physics: UIConstants.physics,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14.0, vertical: 6),
                  child: AppHeaderText(
                    'CONVERSATIONS',
                    color: _kChatListTextColor,
                    fontSizeFactor: 0.70,
                    fontWeightDelta: 4,
                  ),
                );
              }
              final item = chats[index - 1];
              // int n = state.info.fold(
              //   () => 0,
              //   (info) => info.chatRoomIds.containsKey(item.id)
              //       ? info.chatRoomIds[item.id]!
              //       : 0,
              // );

              int n = 0;

              return GestureDetector(
                onTap: item.id != 'headingitem'
                    ? () {
                        context
                            .read<NotificationBloc>()
                            .add(NotificationEvent.messageRead(item.id));
                        Navigator.of(context).pushNamed(Routes.chatPage);
                      }
                    : null,
                child: ListTile(
                  leading: item.buildAvatar(context),
                  title: item.buildTitle(context),
                  subtitle: item.buildSubtitle(
                    context,
                    d: n,
                  ),
                ),
              );
            },
            itemCount: chats.length + 1,
          );
        },
      ),
    );
  }
}

/// A ListItem that contains data to display a heading.

/// A ListItem that contains data to display a message.
class ChatItem {
  final String title;
  final String subtitle;
  final String image;
  final String date;
  final String idF;

  ChatItem({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.idF,
    required this.date,
  });

  Widget buildTitle(BuildContext context) => Row(
        children: [
          AppHeaderText(
            title,
            fontSizeFactor: 0.8,
            color: _kChatListTextColor,
          ),
          Spacer(),
          AppHeaderText(
            date,
            fontSizeFactor: 0.65,
            fontWeightDelta: 0,
            color: _kChatListTextColor,
          )
        ],
      );

  Widget buildSubtitle(BuildContext context, {int d = 0}) => Row(
        children: [
          AppHeaderText(
            subtitle,
            fontSizeFactor: 0.70,
            fontWeightDelta: -1,
            color: _kChatListTextColor,
          ),
          Spacer(),
          if (d != 0)
            Badge(
              badgeContent: Text(d.toString()),
            )
        ],
      );

  Widget buildAvatar(BuildContext context) => CircleAvatar(
        backgroundImage: NetworkImage(image),
      );

  String get id => idF;
}
