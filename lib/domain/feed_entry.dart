import 'user.dart';

class PostEntry {
  final String subreddit;
  final User user;
  final bool isNFSW;
  final String? bodyText;
  final String contentText;
  final String image;
  final int upvotes;
  // final DateTime date;
  // TODO:
  final String date;
  final int commentCount;

  PostEntry({
    required this.subreddit,
    required this.user,
    required this.isNFSW,
    this.bodyText,
    required this.contentText,
    required this.image,
    required this.upvotes,
    required this.date,
    required this.commentCount,
  });
}
