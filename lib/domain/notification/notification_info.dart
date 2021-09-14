import 'package:json_annotation/json_annotation.dart';

part 'notification_info.g.dart';

@JsonSerializable()
class NotificationInfo {
  @JsonKey(name: 'unread_messages_count')
  final int unreadMessagesCount;
  @JsonKey(name: 'unread_activities_count')
  final int unreadActivitiesCount;
  @JsonKey(name: 'inbox_unread_messages_count')
  final int inboxUnreadMessagesCount;

  // final Map<String, int> chatRoomIds;
  NotificationInfo({
    required this.unreadMessagesCount,
    required this.unreadActivitiesCount,
    required this.inboxUnreadMessagesCount,
  });

  factory NotificationInfo.fromJson(Map<String, dynamic> json) =>
      _$NotificationInfoFromJson(json);
  Map<String, dynamic> toJson() => _$NotificationInfoToJson(this);

  NotificationInfo copyWith({
    int? unreadMessagesCount,
    int? unreadActivitiesCount,
    int? inboxUnreadMessagesCount,
  }) {
    return NotificationInfo(
      unreadMessagesCount: unreadMessagesCount ?? this.unreadMessagesCount,
      unreadActivitiesCount:
          unreadActivitiesCount ?? this.unreadActivitiesCount,
      inboxUnreadMessagesCount:
          inboxUnreadMessagesCount ?? this.inboxUnreadMessagesCount,
    );
  }

  @override
  String toString() =>
      'NotificationInfo(unreadMessagesCount: $unreadMessagesCount, unreadActivitiesCount: $unreadActivitiesCount, inboxUnreadMessagesCount: $inboxUnreadMessagesCount)';
}
