// import 'package:json_annotation/json_annotation.dart';

// import 'package:reddit_clone/infastructure/user_dto.dart';

// import 'post_entry_dto.dart';

// part 'link_post_entry_dto.g.dart';

// @JsonSerializable()
// class LinkPostEntryDTO extends PostEntryDTO {
//   final String url;
//   final String bodyText;
//   const LinkPostEntryDTO({
//     required this.url,
//     this.bodyText = '',
//     required String subreddit,
//     required UserDTO user,
//     required bool isNFSW,
//     // this.bodyText,
//     required String contentText,
//     // required this.image,
//     required int upvotes,
//     required String date,
//     required int commentCount,
//   }) : super(
//           subreddit: subreddit,
//           commentCount: commentCount,
//           contentText: contentText,
//           date: date,
//           isNFSW: isNFSW,
//           user: user,
//           upvotes: upvotes,
//         );

//   factory LinkPostEntryDTO.fromJson(Map<String, dynamic> json) =>
//       _$LinkPostEntryDTOFromJson(json);

//   @override
//   Map<String, dynamic> toJson() => _$LinkPostEntryDTOToJson(this);
// }
