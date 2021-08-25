import 'package:json_annotation/json_annotation.dart';

import 'package:reddit_clone/infastructure/user_dto.dart';
import '../domain/post_entry.dart';

part 'post_entry_dto.g.dart';

@JsonSerializable()
class PostEntryDTO {
  final String subreddit;
  final int type;
  final UserDTO user;
  final bool isNFSW;
  final String? bodyText;
  final String contentText;
  final String? image;
  final String? url;
  final int upvotes;
  // final DateTime date;
  // TODO:
  final String date;
  final int commentCount;

  const PostEntryDTO({
    required this.type,
    required this.subreddit,
    required this.user,
    required this.isNFSW,
    this.bodyText,
    required this.contentText,
    this.image,
    this.url,
    required this.upvotes,
    required this.date,
    required this.commentCount,
  });

  PostEntry toDomain() => PostEntry(
        type: type,
        bodyText: bodyText ?? '',
        commentCount: commentCount,
        contentText: contentText,
        date: date,
        image: image ?? '',
        isNFSW: isNFSW,
        subreddit: subreddit,
        upvotes: upvotes,
        url: url ?? '',
        user: user.toDomain(),
      );

  factory PostEntryDTO.fromDomain(PostEntry entry) => PostEntryDTO(
        type: entry.type,
        subreddit: entry.subreddit,
        user: UserDTO.fromDomain(entry.user),
        isNFSW: entry.isNFSW,
        contentText: entry.contentText,
        upvotes: entry.upvotes,
        date: entry.date,
        bodyText: entry.bodyText,
        image: entry.image,
        url: entry.url,
        commentCount: entry.commentCount,
      );

  factory PostEntryDTO.fromJson(Map<String, dynamic> json) =>
      _$PostEntryDTOFromJson(json);
  Map<String, dynamic> toJson() => _$PostEntryDTOToJson(this);

  @override
  String toString() {
    return 'PostEntryDTO(subreddit: $subreddit, user: $user, isNFSW: $isNFSW, bodyText: $bodyText, contentText: $contentText, image: $image, url: $url, upvotes: $upvotes, date: $date, commentCount: $commentCount)';
  }
}
