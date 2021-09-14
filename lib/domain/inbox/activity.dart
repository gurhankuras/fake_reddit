import 'package:json_annotation/json_annotation.dart';

part 'activity.g.dart';

@JsonSerializable()
class Activity {
  @JsonKey(name: '_id')
  final String id;
  final String activityType;
  final String title;
  final String text;
  final SubredditShortInfo subreddit;
  final String createdAt;
  final String postId;
  const Activity({
    required this.id,
    required this.activityType,
    required this.title,
    required this.text,
    required this.subreddit,
    required this.createdAt,
    required this.postId,
  });

  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);
  Map<String, dynamic> toJson() => _$ActivityToJson(this);

  Activity copyWith({
    String? id,
    String? activityType,
    String? title,
    String? text,
    SubredditShortInfo? subreddit,
    String? createdAt,
    String? postId,
  }) {
    return Activity(
      id: id ?? this.id,
      activityType: activityType ?? this.activityType,
      title: title ?? this.title,
      text: text ?? this.text,
      subreddit: subreddit ?? this.subreddit,
      createdAt: createdAt ?? this.createdAt,
      postId: postId ?? this.postId,
    );
  }
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
