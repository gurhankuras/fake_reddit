import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:reddit_clone/_presentation/core/constants/ui.dart';

import '../../domain/comment/comment_data.dart';
import '../core/constants/colors.dart';
import '../core/size_config.dart';

class Comment extends StatefulWidget {
  final CommentData comment;
  final int depth;
  final VoidCallback? hideHandler;
  const Comment({
    Key? key,
    required this.comment,
    this.depth = 0,
    this.hideHandler,
  }) : super(key: key);

  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  static int maxVisibleCommentCount = 2;
  bool showSubcomments = true;

  get isSubcomment => widget.depth != 0;

  void hideAll() {
    setState(() {
      showSubcomments = !showSubcomments;
    });
  }

  @override
  Widget build(BuildContext context) {
    // print(widget.depth);
    final border = isSubcomment
        ? const Border(
            left: BorderSide(
            color: AppColors.lightGrey,
          ))
        : null;

    return Row(
      children: [
        SizedBox(width: SizeConfig.defaultSize / 2),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(border: border),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: hideAll,
                  onLongPress: widget.hideHandler ?? hideAll,
                  child: CommentHead(commentData: widget.comment),
                ),
                if (showSubcomments)
                  MarkdownBody(
                      data:
                          // 'gurhan\n# gurhan\n## gurhan\n### gurhan\n#### gurhan\n##### gurhan\n###### gurhan',
                          // '> gurhan nasil gidiyor\n>\n> nasil gidiyorsa gidiyor',
                          // '**gurhan**',
                          widget.comment.text,
                      styleSheet: UIConstants.markdownStyleSheet),
                _CommentActionBar(
                    upvotes: widget.comment.upvotes, topLevel: !isSubcomment),
                if (showSubcomments)
                  Column(
                    children: [
                      // ...widget.comment.comments.map(
                      //   (subcomment) => Comment(
                      //     depth: widget.depth + 1,
                      //     comment: subcomment,
                      //     hideHandler: widget.hideHandler ?? hideAll,
                      //   ),
                      // ),
                      ...List.generate(
                        min(maxVisibleCommentCount,
                            widget.comment.comments.length),
                        (index) => Comment(
                          depth: widget.depth + 1,
                          comment: widget.comment.comments[index],
                          hideHandler: widget.hideHandler ?? hideAll,
                        ),
                      ),
                      if (widget.comment.comments.length >
                          maxVisibleCommentCount)
                        Text(
                            '${widget.comment.comments.length - maxVisibleCommentCount} more comment')
                    ],
                  )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CommentHead extends StatelessWidget {
  final CommentData commentData;
  const CommentHead({
    Key? key,
    required this.commentData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
            commentData.image,
          ),
        ),
        SizedBox(width: SizeConfig.defaultSize),
        Text(
          commentData.username,
          style: Theme.of(context).textTheme.bodyText1?.apply(
                color: AppColors.moreLightGrey,
              ),
        ),
        Text(
          ' • ',
          style: Theme.of(context).textTheme.bodyText1?.apply(
                color: AppColors.moreLightGrey,
              ),
        ),
        Text(
          commentData.date,
          style: Theme.of(context).textTheme.bodyText1?.apply(
                color: AppColors.moreLightGrey,
                fontSizeFactor: 0.9,
              ),
        ),
      ],
    );
  }
}

class _CommentActionBar extends StatelessWidget {
  final int upvotes;
  final bool topLevel;
  const _CommentActionBar({
    Key? key,
    required this.upvotes,
    required this.topLevel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context)
        .textTheme
        .bodyText1
        ?.apply(fontSizeFactor: 0.9, color: AppColors.lightGrey);
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: IconTheme(
        data: const IconThemeData(
          color: AppColors.lightGrey,
          size: 22,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _CommentAction(icon: Icons.more_horiz, onTap: () {}),
            _CommentAction(icon: Icons.card_giftcard, onTap: () {}),
            _CommentAction(
              icon: Icons.reply,
              onTap: () {},
              second: topLevel
                  ? Text(
                      'Reply',
                      style: textStyle,
                    )
                  : null,
            ),
            _CommentAction(
              icon: Icons.arrow_upward,
              onTap: () {},
              second: Text(
                upvotes.toString(),
                style: textStyle,
              ),
            ),
            _CommentAction(icon: Icons.arrow_downward, onTap: () {})
          ],
        ),
      ),
    );
  }
}

class _CommentAction extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final Widget? second;
  const _CommentAction({
    Key? key,
    required this.icon,
    required this.onTap,
    this.second,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        child: Row(
          children: [
            Icon(icon),
            if (second != null)
              Padding(
                padding: const EdgeInsets.only(left: 6.0),
                child: second!,
              ),
          ],
        ),
      ),
    );
  }
}
