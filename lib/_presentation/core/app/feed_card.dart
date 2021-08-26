import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:reddit_clone/infastructure/core/cache_service.dart';
import 'package:reddit_clone/injection.dart';

import '../../../application/voting/post_voting.dart';
import '../../../domain/post/post_entry.dart';
import '../../../routes.dart';
import '../../search_community/post_to_community_suggestion_tile.dart';
import '../constants/colors.dart';
import '../modal_bottom_sheet/post_more_actions_modal_sheet.dart';
import '../size_config.dart';
import '../vote_arrows.dart';

class PostCard extends StatefulWidget {
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

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  void _navigateToSinglePostPage(BuildContext context) {
    // Future.delayed(Duration(seconds: 1), () {
    //   setState(() {});
    // });
    Navigator.of(context)
        .pushNamed(Routes.singlePostPage, arguments: widget.entry);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: !widget.inPost ? () => _navigateToSinglePostPage(context) : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          decoration: const BoxDecoration(color: AppColors.lightBlack),
          width: double.infinity,
          child: PostCardBody(
            // isNSFW: entry.isNFSW,

            post: widget.entry,
            inSubreddit: widget.inSubreddit,
            inPost: widget.inPost,
            content: widget.contentWidget,
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
    required this.inPost,
    required this.post,
  }) : super(key: key);

  final bool inSubreddit;
  final Widget content;
  final bool inPost;
  final PostEntry post;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PostTopInfoTile(
          entry: post,
          inSubreddit: inSubreddit,
        ),
        if (post.isNFSW)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: NSFWWarning(
              darkened: post.visited,
              inPost: inPost,
            ),
          ),
        content,
        if (!inPost) PostActionBar(entry: post)
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
