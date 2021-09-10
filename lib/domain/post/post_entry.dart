import '../core/user.dart';

enum PostType { image, text, link }

class PostEntry {
  final String subreddit;
  final User user;
  final bool isNFSW;
  final String id;
  final String contentText;
  final PostType type;
  final int upvotes;
  final String date;
  final int commentCount;
  final bool visited;

  final String? bodyText;
  final String? image;
  final String? url;
  final String? linkImage;

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
    this.visited = false,
    this.bodyText,
    this.image,
    this.url,
    this.linkImage,
  });

  PostEntry copyWith({
    String? subreddit,
    User? user,
    bool? isNFSW,
    String? id,
    String? contentText,
    PostType? type,
    int? upvotes,
    String? date,
    int? commentCount,
    bool? visited,
    String? bodyText,
    String? image,
    String? url,
    String? linkImage,
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
      bodyText: bodyText ?? this.bodyText,
      image: image ?? this.image,
      url: url ?? this.url,
      linkImage: linkImage ?? this.linkImage,
    );
  }
}
