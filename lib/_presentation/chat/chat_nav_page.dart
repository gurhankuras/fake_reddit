import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:reddit_clone/_presentation/core/constants/colors.dart';
import 'package:reddit_clone/_presentation/core/constants/ui.dart';
import 'package:reddit_clone/_presentation/core/reusable/app_header.dart';
import 'package:reddit_clone/routes.dart';

const _kChatListTextColor = AppColors.lightGrey;

class ChatNavPage extends StatelessWidget {
  const ChatNavPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chats = [
      HeadingItem('CONVERSATIONS'),
      ChatItem(
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
      body: ListView.builder(
        physics: UIConstants.physics,
        itemBuilder: (context, index) {
          return chats[index].build(context);
        },
        itemCount: chats.length,
      ),
    );
  }
}

abstract class ListItem {
  Widget build(BuildContext context);
}

/// A ListItem that contains data to display a heading.
class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: AppHeaderText(
        heading,
        color: _kChatListTextColor,
        fontSizeFactor: 0.70,
        fontWeightDelta: 4,
      ),
    );
  }
}

/// A ListItem that contains data to display a message.
class ChatItem implements ListItem {
  final String title;
  final String subtitle;
  final String image;
  final String date;

  ChatItem({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(Routes.chatPage),
      child: ListTile(
        leading: _buildAvatar(context),
        title: _buildTitle(context),
        subtitle: _buildSubtitle(context),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) => Row(
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

  Widget _buildSubtitle(BuildContext context) => AppHeaderText(
        subtitle,
        fontSizeFactor: 0.70,
        fontWeightDelta: -1,
        color: _kChatListTextColor,
      );

  Widget _buildAvatar(BuildContext context) => CircleAvatar(
        backgroundImage: NetworkImage(image),
      );
}
