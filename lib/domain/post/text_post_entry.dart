import '../core/user.dart';
import 'post_entry.dart';

class TextPostEntry extends PostEntry {
  final String bodyText;
  TextPostEntry({
    required this.bodyText,
    required int type,
    required String subreddit,
    required User user,
    required bool isNFSW,
    bool visited = false,
    required String id,
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
          visited: visited,
        );
}
