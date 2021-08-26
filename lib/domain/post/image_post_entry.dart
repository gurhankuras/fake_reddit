import '../core/user.dart';
import 'post_entry.dart';

class ImagePostEntry extends PostEntry {
  final String image;

  ImagePostEntry({
    required this.image,
    required int type,
    required String subreddit,
    required User user,
    required String id,
    required bool isNFSW,
    bool visited = false,
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
