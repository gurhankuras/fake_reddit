import '../core/user.dart';

class PostEntry {
  final String subreddit;
  final User user;
  final bool isNFSW;
  final String id;
  final String contentText;
  final int type;
  final int upvotes;
  final String date;
  final int commentCount;
  final bool visited;

  PostEntry({
    required this.subreddit,
    required this.user,
    required this.isNFSW,
    required this.id,
    required this.contentText,
    required this.type,
    required this.upvotes,
    required this.date,
    required this.commentCount,
    required this.visited,
  });

  // void setVisited(bool val) {
  //   visited = val;
  // }
  // PostEntry copyWith({
  //   String? subreddit,
  //   User? user,
  //   bool? isNFSW,
  //   String? id,
  //   String? contentText,
  //   int? type,
  //   int? upvotes,
  //   String? date,
  //   int? commentCount,
  //   bool? visited,
  // }) {
  //   return PostEntry(
  //     subreddit: subreddit ?? this.subreddit,
  //     user: user ?? this.user,
  //     isNFSW: isNFSW ?? this.isNFSW,
  //     id: id ?? this.id,
  //     contentText: contentText ?? this.contentText,
  //     type: type ?? this.type,
  //     upvotes: upvotes ?? this.upvotes,
  //     date: date ?? this.date,
  //     commentCount: commentCount ?? this.commentCount,
  //     visited: visited ?? this.visited,
  //   );
  // }

  PostEntry copyWith({
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
    return PostEntry(
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
    );
  }
}
