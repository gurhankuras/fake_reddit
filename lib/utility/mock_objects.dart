import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:reddit_clone/domain/subreddit/subreddit_rule.dart';

import '../domain/core/user.dart';
import '../domain/image_data.dart';
import '../domain/post/post_entry.dart';

List<PostEntry> mockMixedPosts = [
  PostEntry(
    type: PostType.text,
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
  PostEntry(
    type: PostType.image,
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
  PostEntry(
    type: PostType.image,
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
  PostEntry(
    type: PostType.link,
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
  PostEntry(
    type: PostType.link,
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

PostEntry mockPostEntry = PostEntry(
  type: PostType.text,
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

List<SubredditRule> get fakeRules => [
      SubredditRule(
        header: 'Appropriate Content',
        content:
            'Content posted to /r/nextfuckinglevel should be a gif or video tha represents something impressive, be it an action, object, a skill, moment, a fact that is above all others. Posts should elicit a reaction of "that is next level" from viewers (different from "wow that\'s cool")',
      ),
      SubredditRule(
        header: 'Use Descriptive Title',
        content:
            'Content posted to /r/nextfuckinglevel should be a gif or video tha represents something impressive, be it an action, object, a skill, moment, a fact that is above all others. Posts should elicit a reaction of "that is next level" from viewers (different from "wow that\'s cool")',
      ),
      SubredditRule(
        header:
            'All spoilers must be appropriately tagged/flaired flaired flaired',
        content:
            'Spoilers don\'t expire. So treat them appropriately as there are always new readers. Please use reddit\'s spoiler tagsa and flairs to',
      ),
      SubredditRule(
        header: 'Use Descriptive Title',
        content:
            'Content posted to /r/nextfuckinglevel should be a gif or video ',
      ),
      SubredditRule(
        header: 'Use Descriptive Title',
        content:
            'Content posted to /r/nextfuckinglevel should be a gif or video tha represents something impressive, be it an action, object, a skill, moment, a fact that is above all others. Posts should elicit a reaction of "that is next level" from viewers (different from "wow that\'s cool")',
      ),
    ];
