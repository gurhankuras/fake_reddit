import 'package:flutter/material.dart';

import '../../domain/post/post_entry.dart';
import '../core/blurred_image.dart';
import 'widgets/post_card.dart';
import 'widgets/post_card_types.dart';

Widget makePostWidget(
  PostEntry post, {
  bool inPost = false,
  bool inSubreddit = false,
  required VoidCallback onTapped,
}) {
  Widget postWidget;

  switch (post.type) {
    case PostType.text:
      postWidget = PostTextContent(entry: post, inPost: inPost);
      break;
    case PostType.image:
      if (post.isNFSW) {
        postWidget = SideBySideTextAndImageContent(
          entry: post,
          inPost: inPost,
          image: BlurredImage(
            blurred: post.isNFSW && !inSubreddit,
            url: post.image!,
          ),
        );
      } else {
        postWidget = ImagePostContent(
          entry: post,
          inPost: inPost,
        );
      }
      break;
    case PostType.link:
      postWidget = SideBySideTextAndImageContent(
        inPost: inPost,
        entry: post,
        image: LinkedPostImage(entry: post),
      );
      break;
    default:
      postWidget = Container(
        child: Text('Else'),
      );
  }

  return PostCard(
    entry: post,
    contentWidget: postWidget,
    inSubreddit: inSubreddit,
    inPost: inPost,
    onPostTapped: onTapped,
  );
}
