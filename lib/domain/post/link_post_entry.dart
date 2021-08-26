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
          visited: visited,
        );

  @override
  LinkPostEntry copyWith({
    String? subreddit,
    User? user,
    bool? isNFSW,
    String? id,
    String? contentText,
    int? type,
    int? upvotes,
    String? date,
    int? commentCount,
    bool? visited,
  }) {
    return LinkPostEntry(
      subreddit: subreddit ?? this.subreddit,
      user: user ?? this.user,
      isNFSW: isNFSW ?? this.isNFSW,
      id: id ?? this.id,
      contentText: contentText ?? this.contentText,
      type: type ?? this.type,
      upvotes: upvotes ?? this.upvotes,
      date: date ?? this.date,
      commentCount: commentCount ?? this.commentCount,
      visited: visited ?? this.visited,
      linkImage: linkImage,
      url: url,
    );
  }
}
