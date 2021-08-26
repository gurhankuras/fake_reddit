import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:reddit_clone/domain/image_data.dart';
import 'package:uuid/uuid.dart';

import '../domain/post/image_post_entry.dart';
import '../domain/post/link_post_entry.dart';
import '../domain/post/post_entry.dart';
import '../domain/post/text_post_entry.dart';
import '../domain/core/user.dart';

List<PostEntry> mockMixedPosts = [
  TextPostEntry(
    type: 1,
    isNFSW: true,
    bodyText: 'This is body text',
    commentCount: 5,
    contentText: 'This is title',
    date: '6h',
    subreddit: 'tokyoghoul',
    upvotes: 10,
    user: User(
        image:
            'https://images.unsplash.com/photo-1472214103451-9374bd1c798e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
        nickname: 'gurhankuras'),
    id: '1234567',
  ),
  ImagePostEntry(
    type: 2,
    isNFSW: false,
    commentCount: 14,
    contentText: 'What a beautiful scene!',
    image:
        'https://images.unsplash.com/photo-1472214103451-9374bd1c798e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
    date: '6h',
    subreddit: 'nature',
    upvotes: 34,
    user: User(
        image:
            'https://images.unsplash.com/photo-1472214103451-9374bd1c798e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
        nickname: 'nicetoknoww'),
    id: '12345678',
  ),
  ImagePostEntry(
    type: 2,
    isNFSW: true,
    // bodyText: lorem(paragraphs: 1, words: 30),
    commentCount: 2,
    contentText: 'I don\'t know this',
    image:
        'https://images.unsplash.com/photo-1502086223501-7ea6ecd79368?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=723&q=80',
    date: '1h',
    subreddit: 'berserklejerk',
    upvotes: 5,
    user: User(
        image:
            'https://images.unsplash.com/photo-1472214103451-9374bd1c798e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
        nickname: 'hahatani'),
    id: '123456789',
  ),
  LinkPostEntry(
    type: 3,
    isNFSW: false,
    url: 'imgur.com',
    commentCount: 2,
    contentText: 'This is title',
    linkImage:
        'https://images.unsplash.com/photo-1548261456-f180c023312a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    date: '1h',
    subreddit: 'bbcnews',
    upvotes: 5,
    user: User(
        image:
            'https://images.unsplash.com/photo-1472214103451-9374bd1c798e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
        nickname: 'hahatani'),
    id: '1234567891',
  ),
  LinkPostEntry(
    type: 3,
    isNFSW: true,
    url: 'imgur.com',
    commentCount: 2,
    contentText: 'This is title',
    linkImage:
        'https://images.unsplash.com/photo-1548261456-f180c023312a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    date: '1h',
    subreddit: 'bbcnews',
    upvotes: 5,
    user: User(
        image:
            'https://images.unsplash.com/photo-1472214103451-9374bd1c798e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
        nickname: 'hahatani'),
    id: '12345678912',
  ),
];

PostEntry mockPostEntry = TextPostEntry(
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
  upvotes: 244,
  date: '4h',
  commentCount: 432, bodyText: lorem(paragraphs: 1, words: 30),
  id: uuid.v4(),
);
