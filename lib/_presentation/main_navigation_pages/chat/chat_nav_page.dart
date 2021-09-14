import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import 'package:reddit_clone/application/chat/chat_rooms/chat_rooms_bloc.dart';
import 'package:reddit_clone/infastructure/chat/chat_room.dart';
import 'package:reddit_clone/route_params.dart';
import 'package:reddit_clone/utility/date.dart';

import '../../../application/notification/bloc/notification_bloc.dart';
import '../../../routes.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/ui.dart';
import '../../core/reusable/app_header.dart';

const _kChatListTextColor = AppColors.lightGrey;

class ChatNavPage extends StatefulWidget {
  const ChatNavPage({Key? key}) : super(key: key);

  @override
  _ChatNavPageState createState() => _ChatNavPageState();
}

class _ChatNavPageState extends State<ChatNavPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
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
        body:
            // BlocBuilder<NotificationBloc, NotificationState>(
            // builder: (context, state) {
            // return
            BlocBuilder<ChatRoomsBloc, ChatRoomsState>(
          builder: (context, state) {
            return ListView.builder(
              physics: UIConstants.physics,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14.0, vertical: 6),
                    child: AppHeaderText(
                      'CONVERSATIONS',
                      color: _kChatListTextColor,
                      fontSizeFactor: 0.70,
                      fontWeightDelta: 4,
                    ),
                  );
                }
                final item = ChatItem(room: state.chatRooms[index - 1]);

                return GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed(Routes.chatPage,
                      arguments: ChatPageParams(roomId: item.room.id)),
                  child: ListTile(
                    leading: item.buildAvatar(context),
                    title: item.buildTitle(context),
                    subtitle: item.buildSubtitle(
                      context,
                      d: item.room.user.unreadMessageCount,
                    ),
                  ),
                );
              },
              itemCount: state.chatRooms.length + 1,
              // );
            );
          },
        )
        // },
        );
  }

  @override
  bool get wantKeepAlive => true;
}

/// A ListItem that contains data to display a heading.

/// A ListItem that contains data to display a message.
class ChatItem {
  final ChatRoom room;

  ChatItem({
    required this.room,
  });

  Widget buildTitle(BuildContext context) => Row(
        children: [
          AppHeaderText(
            'Room 1',
            fontSizeFactor: 0.8,
            color: _kChatListTextColor,
          ),
          Spacer(),
          AppHeaderText(
            generateDateText(DateTime.parse(room.lastMessage.createdAt)),
            fontSizeFactor: 0.65,
            fontWeightDelta: 0,
            color: _kChatListTextColor,
          )
        ],
      );

  Widget buildSubtitle(BuildContext context, {int d = 0}) => Row(
        children: [
          AppHeaderText(
            '${room.lastMessage.senderName}:',
            fontSizeFactor: 0.70,
            fontWeightDelta: -1,
            color: _kChatListTextColor,
          ),
          AppHeaderText(
            ' ${room.lastMessage.text}',
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
        backgroundImage: NetworkImage(room.avatar),
      );

  String get id => room.id;
}
