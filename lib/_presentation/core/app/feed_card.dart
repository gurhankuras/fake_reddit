import 'dart:ui';

import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reddit_clone/domain/feed_entry.dart';
import 'package:reddit_clone/domain/user.dart';

import 'app_bottom_modal_sheet.dart';
import 'colors.dart';

class FeedCard extends StatelessWidget {
  const FeedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: const BoxDecoration(color: AppColors.lightBlack),
        width: double.infinity,
        child: Column(
          children: [
            FeedTopInfoTile(entry: mockFeedEntry),
            FeedContent(entry: mockFeedEntry),
            FeedActionBar(entry: mockFeedEntry)
          ],
        ),
      ),
    );
  }
}

class FeedContent extends StatelessWidget {
  final FeedEntry entry;
  const FeedContent({
    Key? key,
    required this.entry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropCapText(
        // lorem(paragraphs: 1, words: 10),
        entry.contentText,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        // mode: DropCapMode.aside,
        dropCapPosition: DropCapPosition.end,
        dropCap: DropCap(
          width: 100,
          height: 100,
          child: Image.network(entry.image),
        ),
      ),
    );
  }
}

class FeedTopInfoTile extends StatelessWidget {
  final FeedEntry entry;

  const FeedTopInfoTile({
    Key? key,
    required this.entry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: CircleAvatar(
        backgroundImage: NetworkImage(entry.user.image),
      ),
      title: Text(
        'r/${entry.subreddit}',
        style: Theme.of(context)
            .textTheme
            .bodyText1
            ?.copyWith(color: AppColors.moreLightGrey),
      ),
      subtitle: Row(
        children: [
          Text(
            'u/${entry.user.nickname}',
            style: Theme.of(context).textTheme.caption?.copyWith(
                  color: AppColors.moreLightGrey,
                ),
          ),
          Text(
            ' • ',
            style: Theme.of(context)
                .textTheme
                .caption
                ?.copyWith(color: AppColors.moreLightGrey),
          ),
          Text(
            entry.date,
            style: Theme.of(context)
                .textTheme
                .caption
                ?.copyWith(color: AppColors.moreLightGrey),
          ),
          Text(
            ' • ',
            style: Theme.of(context)
                .textTheme
                .caption
                ?.copyWith(color: AppColors.moreLightGrey),
          ),
          Text(
            'i.redd.it',
            style: Theme.of(context)
                .textTheme
                .caption
                ?.copyWith(color: AppColors.moreLightGrey),
          ),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ElevatedButton.icon(
          //   onPressed: () {},
          //   icon: Icon(Icons.add),
          //   label: Text('Join'),
          //   style: ElevatedButton.styleFrom(
          //     shape: StadiumBorder(),
          //   ),
          // ),
          LayoutBuilder(
            builder: (context, constraints) {
              return Tooltip(
                message: 'Join',
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.add,
                      color: IconTheme.of(context).color,
                    ),
                  ),
                ),
              );
            },
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet<void>(
                context: context,
                enableDrag: false,
                builder: (BuildContext context) {
                  return const AppModalBottomSheet();
                },
              );
            },
            onLongPressEnd: (_) {
              // TODO:
            },
            child: Icon(
              Icons.more_horiz,
              size: 20,
              color: IconTheme.of(context).color,
            ),
          ),
        ],
      ),
    );
  }
}

class FeedActionBar extends StatelessWidget {
  final FeedEntry entry;
  const FeedActionBar({
    Key? key,
    required this.entry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Theme(
        data: theme.copyWith(
            textTheme: theme.textTheme.copyWith(
              bodyText2: theme.textTheme.bodyText2?.copyWith(
                color: AppColors.moreLightGrey,
                fontSize: 13,
              ),
            ),
            iconTheme: theme.iconTheme
                .copyWith(color: AppColors.moreLightGrey, size: 18)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                FeedAction(
                  icon: const Icon(Icons.arrow_upward_outlined),
                  text: '13',
                  action: () {},
                ),
                const SizedBox(width: 5),
                FeedAction(
                  icon: const Icon(Icons.arrow_downward_outlined),
                  action: () {},
                ),
              ],
            ),
            FeedAction(
              icon: const FaIcon(FontAwesomeIcons.commentAlt),
              text: entry.commentCount == 0
                  ? 'Comment'
                  : entry.commentCount.toString(),
              action: () {},
            ),
            FeedAction(
              icon: const Icon(Icons.share),
              text: 'Share',
              action: () {},
            ),
            FeedAction(
              icon: const Icon(Icons.card_giftcard),
              text: 'Award',
              action: () {},
            ),
          ],
        ),
      ),
    );
  }
}

/*
 Expanded(
            child: Row(
              children: [
                FeedAction(
                  icon: Icon(Icons.arrow_upward_outlined),
                  text: '13',
                  action: () {},
                ),
                FeedAction(
                  icon: Icon(Icons.arrow_downward_outlined),
                  action: () {},
                ),
              ],
            ),
          ),
          Expanded(
            child: FeedAction(
              icon: FaIcon(FontAwesomeIcons.commentAlt),
              text: entry.commentCount == 0
                  ? 'Comment'
                  : entry.commentCount.toString(),
              action: () {},
            ),
          ),
          Expanded(
            child: FeedAction(
              icon: Icon(Icons.share),
              text: 'Share',
              action: () {},
            ),
          ),
          Expanded(
            child: FeedAction(
              icon: Icon(Icons.card_giftcard),
              text: 'Award',
              action: () {},
            ),
          ),
*/

class FeedAction extends StatelessWidget {
  final VoidCallback action;
  final String? text;
  final Widget icon;
  const FeedAction({
    Key? key,
    required this.action,
    this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      onLongPressEnd: (_) => action(),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: icon,
          ),
          if (text != null)
            Text(text!, style: Theme.of(context).textTheme.bodyText2),
        ],
      ),
    );
  }
}

final mockFeedEntry = FeedEntry(
  subreddit: 'berserklejerk',
  user: User(
    nickname: 'TheCompleteMental',
    image:
        'https://cdnb.artstation.com/p/assets/images/images/024/649/867/large/hugo-tahar-berserk-guts-2.jpg?1583101136',
  ),
  isNFSW: true,
  contentText: 'Gut has something to say',
  image:
      'https://cdnb.artstation.com/p/assets/images/images/024/649/867/large/hugo-tahar-berserk-guts-2.jpg?1583101136',
  upvotes: 244,
  date: '4h',
  commentCount: 432,
);
