import 'user.dart';

class FeedEntry {
  final String subreddit;
  final User user;
  final bool isNFSW;
  final String contentText;
  final String image;
  final int upvotes;
  // final DateTime date;
  // TODO:
  final String date;
  final int commentCount;

  FeedEntry({
    required this.subreddit,
    required this.user,
    required this.isNFSW,
    required this.contentText,
    required this.image,
    required this.upvotes,
    required this.date,
    required this.commentCount,
  });
}
