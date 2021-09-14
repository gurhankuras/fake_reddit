import 'package:json_annotation/json_annotation.dart';
import 'activity.g.dart';

@JsonSerializable()
class Activity {
  final String type;
  final String text;
  final SubredditShortInfo subreddit;
  final String createdAt;
  final String postId;
  const Activity({
    required this.type,
    required this.text,
    required this.subreddit,
    required this.createdAt,
    required this.postId,
  });

  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);
  Map<String, dynamic> toJson() => _$ActivityToJson(this);
}

@JsonSerializable()
class SubredditShortInfo {
  final String id;
  final String name;
  final String avatar;
  const SubredditShortInfo({
    required this.id,
    required this.name,
    required this.avatar,
  });

  factory SubredditShortInfo.fromJson(Map<String, dynamic> json) =>
      _$SubredditShortInfoFromJson(json);
  Map<String, dynamic> toJson() => _$SubredditShortInfoToJson(this);
}
