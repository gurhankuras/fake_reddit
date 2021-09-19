import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../application/voting/bloc/vote_bloc.dart';
import '../../core/constants/colors.dart';
import 'vote_arrows.dart';

class PostActionBar extends StatelessWidget {
  // final PostEntry entry;
  final int commentCount;
  final int upvotes;
  final String postId;
  final VoidCallback? onTapComments;
  final Color contentColor;
  final Gradient? gradient;

  const PostActionBar({
    Key? key,
    required this.commentCount,
    required this.upvotes,
    required this.postId,
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
            BlocProvider(
              create: (context) => VoteBloc(upvotes),
              child: UpvoteButton(),
            ),
            // ChangeNotifierProvider(
            //   create: (context) => PostVoting(upvotes: upvotes),
            //   child: UpvoteButton(),
            // ),
            PostAction(
              icon: const FaIcon(FontAwesomeIcons.commentAlt),
              text: commentCount == 0 ? 'Comment' : commentCount.toString(),
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
    final textStyle = Theme.of(context).textTheme.bodyText2?.apply(
          color: textColor,
          fontWeightDelta: 2,
          fontSizeFactor: 1.06,
        );
    return GestureDetector(
      onTap: action,
      onLongPressEnd: (_) => action(),
      child: Row(
        children: [
          Padding(padding: const EdgeInsets.only(right: 5), child: icon),
          if (text != null) Text(text!, style: textStyle),
        ],
      ),
    );
  }
}
