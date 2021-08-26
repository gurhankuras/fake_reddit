import 'package:flutter/material.dart';

import '../domain/post/image_post_entry.dart';
import '../domain/post/link_post_entry.dart';
import '../domain/post/post_entry.dart';
import '../domain/post/text_post_entry.dart';
import 'core/app/feed_card.dart';
import 'core/app/post_card_types.dart';
import 'core/blurred_image.dart';

abstract class IPostWidgetFactory {
  Widget create(
    PostEntry post, {
    PostWidgetFactoryOptions options = kDefaultWidgetFactoryOptions,
  });
}

class PostWidgetFactoryOptions {
  final bool inSubreddit;
  final bool inPost;

  const PostWidgetFactoryOptions({
    required this.inSubreddit,
    required this.inPost,
  });
}

const kDefaultWidgetFactoryOptions =
    PostWidgetFactoryOptions(inPost: false, inSubreddit: false);

class PostWidgetFactory implements IPostWidgetFactory {
  @override
  Widget create(
    PostEntry post, {
    PostWidgetFactoryOptions options = kDefaultWidgetFactoryOptions,
  }) {
    Widget postWidget;

    if (post is TextPostEntry) {
      postWidget = PostTextContent(entry: post, inPost: options.inPost);
    } else if (post is ImagePostEntry) {
      if (post.isNFSW) {
        postWidget = SideBySideTextAndImageContent(
          entry: post,
          inPost: options.inPost,
          image: BlurredImage(
            blurred: post.isNFSW && !options.inSubreddit,
            url: post.image,
          ),
        );
      } else {
        postWidget = ImagePostContent(
          entry: post,
          inPost: options.inPost,
        );
      }
    } else if (post is LinkPostEntry) {
      postWidget = SideBySideTextAndImageContent(
        inPost: options.inPost,
        entry: post,
        image: LinkedPostImage(entry: post),
      );
    } else {
      postWidget = Container(
        child: Text('Else'),
      );
    }
    return PostCard(
      entry: post,
      contentWidget: postWidget,
      inSubreddit: options.inSubreddit,
      inPost: options.inPost,
    );
  }
}
