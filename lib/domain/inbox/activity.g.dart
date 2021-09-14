// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Activity _$ActivityFromJson(Map<String, dynamic> json) => Activity(
      id: json['_id'] as String,
      activityType: json['activityType'] as String,
      title: json['title'] as String,
      text: json['text'] as String,
      subreddit: SubredditShortInfo.fromJson(
          json['subreddit'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String,
      postId: json['postId'] as String,
    );

Map<String, dynamic> _$ActivityToJson(Activity instance) => <String, dynamic>{
      '_id': instance.id,
      'activityType': instance.activityType,
      'title': instance.title,
      'text': instance.text,
      'subreddit': instance.subreddit,
      'createdAt': instance.createdAt,
      'postId': instance.postId,
    };

SubredditShortInfo _$SubredditShortInfoFromJson(Map<String, dynamic> json) =>
    SubredditShortInfo(
      id: json['id'] as String,
      name: json['name'] as String,
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$SubredditShortInfoToJson(SubredditShortInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
    };
