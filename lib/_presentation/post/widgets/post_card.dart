import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:reddit_clone/_presentation/home/home_tab_page.dart';
import 'package:reddit_clone/_presentation/post/widgets/post_action_bar.dart';
import 'package:reddit_clone/application/home_tab_page/feed_bloc.dart';

import 'package:reddit_clone/infastructure/core/cache_service.dart';
import 'package:reddit_clone/injection.dart';

import '../../../application/voting/post_voting.dart';
import '../../../domain/post/post_entry.dart';
import '../../../routes.dart';
import '../../search_community/post_to_community_suggestion_tile.dart';
import '../../core/constants/colors.dart';
import '../../core/modal_bottom_sheet/post_more_actions_modal_sheet.dart';
import '../../core/size_config.dart';
import '../../core/vote_arrows.dart';

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

  void _navigateToSinglePostPage(BuildContext context) {
    // Future.delayed(Duration(seconds: 1), () {
    //   setState(() {});
    // });
    Navigator.of(context).pushNamed(Routes.singlePostPage,
        arguments: {'post': entry, 'homeTabBloc': context.read<FeedBloc>()});
  }

  @override
  Widget build(BuildContext context) {
    print('PostCard');
    return GestureDetector(
      onTap: !inPost ? () => _navigateToSinglePostPage(context) : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          decoration: const BoxDecoration(color: AppColors.lightBlack),
          width: double.infinity,
          child: PostCardBody(
            // isNSFW: entry.isNFSW,

            post: entry,
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
        if (!inPost)
          PostActionBar(
            commentCount: post.commentCount,
            postId: post.id,
            upvotes: post.upvotes,
          )
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
