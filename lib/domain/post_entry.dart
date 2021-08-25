import 'user.dart';

class PostEntry {
  final String subreddit;
  final User user;
  final bool isNFSW;
  final String bodyText;
  final String contentText;
  final String image;
  final int type;
  final String url;
  final int upvotes;
  // final DateTime date;
  // TODO:
  final String date;
  final int commentCount;

  const PostEntry({
    required this.type,
    required this.subreddit,
    required this.user,
    required this.isNFSW,
    required this.bodyText,
    required this.contentText,
    required this.image,
    required this.url,
    required this.upvotes,
    required this.date,
    required this.commentCount,
  });
}
