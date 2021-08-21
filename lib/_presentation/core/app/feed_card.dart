import 'dart:ui';

import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:reddit_clone/_presentation/core/app/post_card_types.dart';
import 'package:reddit_clone/_presentation/core/authentication_button.dart';
import 'package:reddit_clone/_presentation/core/blurred_image.dart';
import 'package:reddit_clone/_presentation/core/reusable/app_header.dart';
import 'package:reddit_clone/_presentation/core/size_config.dart';
import 'package:reddit_clone/_presentation/post_feed/create_feed_entry_overview_page.dart';
import 'package:reddit_clone/_presentation/search_community/post_to_community_suggestion_tile.dart';

import '../../../domain/feed_entry.dart';
import '../../../domain/user.dart';
import '../../../routes.dart';
import '../../../utility/app_logger.dart';
import 'app_bottom_modal_sheet.dart';
import 'colors.dart';

class PostCard extends StatelessWidget {
  final bool inSubreddit;
  final bool inPost;
  // final int postType;
  final PostEntry entry;
  const PostCard({
    Key? key,
    required this.inSubreddit,
    required this.inPost,
    required this.entry,
  }) : super(key: key);

  static const postType = 1;
  Widget getPostContent() {
    switch (postType) {
// text
      case 1:
        return PostTextContent(entry: mockPostEntry, inPost: inPost);

// image
      case 2:
        if (mockPostEntry.isNFSW) {
          return SideBySideTextAndImageContent(
            entry: mockPostEntry,
            image: BlurredImage(
              blurred: mockPostEntry.isNFSW && !inSubreddit,
              url: mockPostEntry.image,
            ),
          );
        }
        return ImagePostContent(entry: mockPostEntry);
// link
      case 3:
        return SideBySideTextAndImageContent(
          entry: mockPostEntry,
          image: LinkedPostImage(entry: mockPostEntry),
        );

      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(Routes.singlePostPage),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          decoration: const BoxDecoration(color: AppColors.lightBlack),
          width: double.infinity,
          child: PostCardBody(
            isNSFW: entry.isNFSW,
            inSubreddit: inSubreddit,
            content: getPostContent(),
          ),
        ),
      ),
    );
  }
}

class PostCardBody extends StatelessWidget {
  const PostCardBody({
    Key? key,
    required this.inSubreddit,
    required this.content,
    required this.isNSFW,
  }) : super(key: key);

  final bool isNSFW;
  final bool inSubreddit;
  final Widget content;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PostTopInfoTile(
          entry: mockPostEntry,
          inSubreddit: inSubreddit,
        ),
        if (isNSFW)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: NSFWWarning(),
          ),
        content,
        PostActionBar(entry: mockPostEntry)
      ],
    );
  }
}

class PostTopInfoTile extends StatelessWidget {
  final PostEntry entry;
  final bool inSubreddit;

  const PostTopInfoTile({
    Key? key,
    required this.entry,
    required this.inSubreddit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          if (!inSubreddit)
            GestureDetector(
              onTap: () =>
                  Navigator.of(context).pushNamed(Routes.subredditPage),
              child:
                  CircleAvatar(backgroundImage: NetworkImage(entry.user.image)),
            ),
          if (!inSubreddit)
            SizedBox(width: SizeConfig.screenWidthPercentage(2)),
          PostTopInfoText(inSubreddit: inSubreddit, entry: entry),
          Spacer(),
          GestureDetector(
            onTap: () => showPostMoreSheet(context),
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

class PostTopInfoText extends StatelessWidget {
  const PostTopInfoText({
    Key? key,
    required this.inSubreddit,
    required this.entry,
  }) : super(key: key);

  final bool inSubreddit;
  final PostEntry entry;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!inSubreddit)
          Text(
            'r/${entry.subreddit}',
            style: Theme.of(context)
                .textTheme
                .bodyText1
                ?.copyWith(color: AppColors.moreLightGrey),
          ),
        PostTopInfoSubtitle(entry: entry),
      ],
    );
  }
}

class PostTopInfoSubtitle extends StatelessWidget {
  const PostTopInfoSubtitle({
    Key? key,
    required this.entry,
  }) : super(key: key);

  final PostEntry entry;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context)
        .textTheme
        .caption
        ?.copyWith(color: AppColors.moreLightGrey);
    return Row(
      children: [
        Text('u/${entry.user.nickname}', style: textStyle),
        Text(' • ', style: textStyle),
        Text(entry.date, style: textStyle),
        Text(' • ', style: textStyle),
        Text('i.redd.it', style: textStyle),
      ],
    );
  }
}

// LayoutBuilder(
//   builder: (context, constraints) {
//     return Tooltip(
//       message: 'Join',
//       child: Padding(
//         padding: const EdgeInsets.only(right: 8.0),
//         child: Container(
//           decoration: const BoxDecoration(
//             color: Colors.blue,
//             shape: BoxShape.circle,
//           ),
//           child: Icon(
//             Icons.add,
//             color: IconTheme.of(context).color,
//           ),
//         ),
//       ),
//     );
//   },
// ),

void showPostMoreSheet(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    enableDrag: false,
    builder: (BuildContext context) {
      return AppModalBottomSheet(
        tiles: [
          ModelSheetTile(
            onAction: () => log.i('onTap!'),
            icon: Icons.share,
            text: 'Share',
          ),
          ModelSheetTile(
            onAction: () => log.i('onTap!'),
            icon: Icons.bookmark_outline,
            text: 'Save',
          ),
          ModelSheetTile(
            onAction: () => log.i('onTap!'),
            icon: Icons.copy_all_outlined,
            text: 'Copy',
          ),
          ModelSheetTile(
            onAction: () => log.i('onTap!'),
            icon: Icons.flag_outlined,
            text: 'Report',
          ),
          ModelSheetTile(
            onAction: () => log.i('onTap!'),
            icon: Icons.block_outlined,
            text: 'Block User',
          ),
          ModelSheetTile(
            onAction: () => log.i('onTap!'),
            icon: Icons.remove_red_eye_outlined,
            text: 'Hide',
          ),
          ModelSheetTile(
            onAction: () => log.i('onTap!'),
            icon: Icons.call_missed_outgoing,
            text: 'Crosspost to a community',
          ),
          ModelSheetTile(
            onAction: () => log.i('onTap!'),
            icon: Icons.chat_outlined,
            text: 'Share to chat',
          ),
        ],
      );
    },
  );
}

class PostActionBar extends StatelessWidget {
  final PostEntry entry;
  const PostActionBar({
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
                PostAction(
                  icon: const Icon(Icons.arrow_upward_outlined),
                  text: '13',
                  action: () {},
                ),
                const SizedBox(width: 5),
                PostAction(
                  icon: const Icon(Icons.arrow_downward_outlined),
                  action: () {},
                ),
              ],
            ),
            PostAction(
              icon: const FaIcon(FontAwesomeIcons.commentAlt),
              text: entry.commentCount == 0
                  ? 'Comment'
                  : entry.commentCount.toString(),
              action: () {},
            ),
            PostAction(
              icon: const Icon(Icons.share),
              text: 'Share',
              action: () {},
            ),
            PostAction(
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

class PostAction extends StatelessWidget {
  final VoidCallback action;
  final String? text;
  final Widget icon;
  const PostAction({
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

PostEntry get mockPostEntry => PostEntry(
      subreddit: 'berserklejerk',
      bodyText: 'nasilsin hahahhaha',
      user: User(
        nickname: 'TheCompleteMental',
        image:
            'https://cdnb.artstation.com/p/assets/images/images/024/649/867/large/hugo-tahar-berserk-guts-2.jpg?1583101136',
      ),
      isNFSW: true,
      contentText: lorem(paragraphs: 1, words: 40),
      image:
          'https://cdnb.artstation.com/p/assets/images/images/024/649/867/large/hugo-tahar-berserk-guts-2.jpg?1583101136',
      upvotes: 244,
      date: '4h',
      commentCount: 432,
    );
