import 'dart:ui';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../application/voting/post_voting.dart';
import '../../../domain/post_entry.dart';
import '../../../domain/user.dart';
import '../../../routes.dart';
import '../../../utility/app_logger.dart';
import '../../search_community/post_to_community_suggestion_tile.dart';
import '../app_snackbar.dart';
import '../size_config.dart';
import '../vote_arrows.dart';
import 'app_bottom_modal_sheet.dart';
import 'colors.dart';

class PostCard extends StatelessWidget {
  final bool inSubreddit;
  final bool inPost;
  final PostEntry entry;
  final Widget contentWidget;
  const PostCard({
    Key? key,
    required this.inSubreddit,
    required this.inPost,
    required this.entry,
    required this.contentWidget,
  }) : super(key: key);

  void _navigateToSinglePostPage(BuildContext context) =>
      Navigator.of(context).pushNamed(Routes.singlePostPage, arguments: entry);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: !inPost ? () => _navigateToSinglePostPage(context) : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          decoration: const BoxDecoration(color: AppColors.lightBlack),
          width: double.infinity,
          child: PostCardBody(
            isNSFW: entry.isNFSW,
            inSubreddit: inSubreddit,
            inPost: inPost,
            content: contentWidget,
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
    required this.inPost,
  }) : super(key: key);

  final bool isNSFW;
  final bool inSubreddit;
  final Widget content;
  final bool inPost;

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
        if (!inPost) PostActionBar(entry: mockPostEntry)
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
            onTap: () => showPostMoreSheet(context, entry),
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

Future<void> showPostMoreSheet(BuildContext pageContext, PostEntry post) async {
  final action = await showModalBottomSheet<String?>(
    context: pageContext,
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
            onAction: () {
              FlutterClipboard.copy(post.contentText).then((_) async {
                Navigator.pop(context, 'copy');
              });
            },
            icon: Icons.copy_all_outlined,
            text: 'Copy text',
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
  if (action == 'copy') {
    showSnack(
      message: 'Your copy is ready for pasta!',
      context: pageContext,
      indicatorColor: Colors.green,
    );
  }
}

class PostActionBar extends StatelessWidget {
  final PostEntry entry;
  final VoidCallback? onTapComments;
  final Color contentColor;
  final Gradient? gradient;

  const PostActionBar({
    Key? key,
    required this.entry,
    this.onTapComments,
    this.contentColor = AppColors.moreLightGrey,
    this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
        gradient: gradient,
      ),
      child: Theme(
        data: theme.copyWith(
            textTheme: theme.textTheme.copyWith(
              bodyText2: theme.textTheme.bodyText2?.copyWith(
                color: contentColor,
                fontSize: 13,
              ),
            ),
            iconTheme: theme.iconTheme.copyWith(color: contentColor, size: 18)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ChangeNotifierProvider(
              create: (context) => PostVoting(upvotes: entry.upvotes),
              child: UpvoteButton(entry: entry),
            ),
            PostAction(
              icon: const FaIcon(FontAwesomeIcons.commentAlt),
              text: entry.commentCount == 0
                  ? 'Comment'
                  : entry.commentCount.toString(),
              action: onTapComments ?? () {},
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
        // ),
      ),
    );
  }
}

class PostAction extends StatelessWidget {
  final VoidCallback action;
  final String? text;
  final Color? textColor;
  final Widget icon;
  const PostAction({
    Key? key,
    required this.action,
    this.text,
    this.textColor,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyText2;
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
            Text(
              text!,
              style: textStyle?.apply(
                color: textColor ?? textStyle.color,
                fontWeightDelta: 2,
                fontSizeFactor: 1.06,
              ),
            ),
        ],
      ),
    );
  }
}

PostEntry get mockPostEntry => PostEntry(
      type: 1,
      subreddit: 'berserklejerk',
      // bodyText: 'nasilsin hahahhaha',
      user: User(
        nickname: 'TheCompleteMental',
        image:
            'https://cdnb.artstation.com/p/assets/images/images/024/649/867/large/hugo-tahar-berserk-guts-2.jpg?1583101136',
      ),
      isNFSW: true,
      contentText: lorem(paragraphs: 1, words: 40),
      // image:
      //     'https://cdnb.artstation.com/p/assets/images/images/024/649/867/large/hugo-tahar-berserk-guts-2.jpg?1583101136',
      upvotes: 244,
      date: '4h',
      commentCount: 432, bodyText: '', image: '', url: '',
    );
