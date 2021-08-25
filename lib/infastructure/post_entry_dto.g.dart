// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_entry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostEntryDTO _$PostEntryDTOFromJson(Map<String, dynamic> json) => PostEntryDTO(
      type: json['type'] as int,
      subreddit: json['subreddit'] as String,
      user: UserDTO.fromJson(json['user'] as Map<String, dynamic>),
      isNFSW: json['isNFSW'] as bool,
      bodyText: json['bodyText'] as String?,
      contentText: json['contentText'] as String,
      image: json['image'] as String?,
      url: json['url'] as String?,
      upvotes: json['upvotes'] as int,
      date: json['date'] as String,
      commentCount: json['commentCount'] as int,
    );

Map<String, dynamic> _$PostEntryDTOToJson(PostEntryDTO instance) =>
    <String, dynamic>{
      'subreddit': instance.subreddit,
      'type': instance.type,
      'user': instance.user,
      'isNFSW': instance.isNFSW,
      'bodyText': instance.bodyText,
      'contentText': instance.contentText,
      'image': instance.image,
      'url': instance.url,
      'upvotes': instance.upvotes,
      'date': instance.date,
      'commentCount': instance.commentCount,
    };
