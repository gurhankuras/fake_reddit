import '../core/user.dart';
import 'post_entry.dart';

class LinkPostEntry extends PostEntry {
  final String url;
  final String linkImage;

  LinkPostEntry({
    required this.url,
    required this.linkImage,
    required int type,
    required String id,
    required String subreddit,
    required User user,
    bool visited = false,
    required bool isNFSW,
    required String contentText,
    required int upvotes,
    required String date,
    required int commentCount,
  }) : super(
            commentCount: commentCount,
            contentText: contentText,
            date: date,
            isNFSW: isNFSW,
            subreddit: subreddit,
            type: type,
            upvotes: upvotes,
            user: user,
            id: id,
            visited: visited);
}
