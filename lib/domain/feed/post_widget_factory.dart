import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:reddit_clone/_presentation/core/app/feed_card.dart';
import 'package:reddit_clone/_presentation/core/app/post_card_types.dart';
import 'package:reddit_clone/_presentation/core/blurred_image.dart';
import 'package:reddit_clone/domain/user.dart';
import '../post_entry.dart';

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
    Widget content;
    switch (post.type) {
// text
      case 1:
        content = PostTextContent(entry: post, inPost: options.inPost);
        break;
// image
      case 2:
        if (post.isNFSW) {
          content = SideBySideTextAndImageContent(
            entry: post,
            image: BlurredImage(
              blurred: post.isNFSW && !options.inSubreddit,
              url: post.image,
            ),
          );
          break;
        }
        content = ImagePostContent(entry: post);
        break;
// link
      case 3:
        content = SideBySideTextAndImageContent(
          entry: post,
          image: LinkedPostImage(entry: post),
        );
        break;
      default:
        content = Container();
        break;
    }
    return PostCard(
      entry: post,
      contentWidget: content,
      inSubreddit: options.inSubreddit,
      inPost: options.inPost,
    );
  }
}

List<PostEntry> mockMixedPosts = [
  PostEntry(
    type: 1,
    isNFSW: true,
    bodyText: 'This is body text',
    commentCount: 5,
    contentText: 'This is title',
    date: '6h',
    subreddit: 'tokyoghoul',
    upvotes: 10,
    user: User(image: '', nickname: 'gurhankuras'),
    url: '',
    image: '',
  ),
  PostEntry(
    type: 2,
    isNFSW: false,
    bodyText: '',
    commentCount: 14,
    contentText: 'What a beautiful scene!',
    image:
        'https://images.unsplash.com/photo-1472214103451-9374bd1c798e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
    date: '6h',
    subreddit: 'nature',
    upvotes: 34,
    user: User(image: '', nickname: 'nicetoknoww'),
    url: '',
  ),
  PostEntry(
    type: 2,
    isNFSW: true,
    bodyText: lorem(paragraphs: 1, words: 30),
    commentCount: 2,
    contentText: 'I don\'t know this',
    image:
        'https://images.unsplash.com/photo-1502086223501-7ea6ecd79368?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=723&q=80',
    date: '1h',
    subreddit: 'berserklejerk',
    upvotes: 5,
    user: User(image: '', nickname: 'hahatani'),
    url: '',
  ),
  PostEntry(
    type: 3,
    isNFSW: false,
    bodyText: '',
    url: 'imgur.com',
    commentCount: 2,
    contentText: 'This is title',
    image:
        'https://images.unsplash.com/photo-1548261456-f180c023312a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    date: '1h',
    subreddit: 'bbcnews',
    upvotes: 5,
    user: User(image: '', nickname: 'hahatani'),
  ),
  PostEntry(
    type: 3,
    isNFSW: true,
    bodyText: '',
    url: 'imgur.com',
    commentCount: 2,
    contentText: 'This is title',
    image:
        'https://images.unsplash.com/photo-1548261456-f180c023312a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    date: '1h',
    subreddit: 'bbcnews',
    upvotes: 5,
    user: User(image: '', nickname: 'hahatani'),
  ),
];
