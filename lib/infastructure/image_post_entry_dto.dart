// import 'package:json_annotation/json_annotation.dart';

// import 'package:reddit_clone/infastructure/user_dto.dart';

// import 'post_entry_dto.dart';

// part 'image_post_entry_dto.g.dart';

// @JsonSerializable()
// class ImagePostEntryDTO extends PostEntryDTO {
//   final String image;
//   const ImagePostEntryDTO({
//     required this.image,
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

//   factory ImagePostEntryDTO.fromJson(Map<String, dynamic> json) =>
//       _$ImagePostEntryDTOFromJson(json);
//   @override
//   Map<String, dynamic> toJson() => _$ImagePostEntryDTOToJson(this);

//   @override
//   String toString() => 'ImagePostEntryDTO(image: $image) ${super.toString()}';
// }
