import 'package:json_annotation/json_annotation.dart';

part 'notification_info.g.dart';

@JsonSerializable()
class NotificationInfo {
  final int unreadMessagesCount;
  // final Map<String, int> chatRoomIds;
  NotificationInfo({
    required this.unreadMessagesCount,
    // required this.chatRoomIds,
  });

  NotificationInfo copyWith({
    int? unreadMessagesCount,
    // Map<String, int>? chatRoomIds,
  }) {
    return NotificationInfo(
      unreadMessagesCount: unreadMessagesCount ?? this.unreadMessagesCount,
      // chatRoomIds: chatRoomIds ?? this.chatRoomIds,
    );
  }

  factory NotificationInfo.fromJson(Map<String, dynamic> json) =>
      _$NotificationInfoFromJson(json);
  Map<String, dynamic> toJson() => _$NotificationInfoToJson(this);
}
