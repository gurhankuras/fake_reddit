// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationInfo _$NotificationInfoFromJson(Map<String, dynamic> json) =>
    NotificationInfo(
      unreadMessagesCount: json['unread_messages_count'] as int,
      unreadActivitiesCount: json['unread_activities_count'] as int,
      inboxUnreadMessagesCount: json['inbox_unread_messages_count'] as int,
    );

Map<String, dynamic> _$NotificationInfoToJson(NotificationInfo instance) =>
    <String, dynamic>{
      'unread_messages_count': instance.unreadMessagesCount,
      'unread_activities_count': instance.unreadActivitiesCount,
      'inbox_unread_messages_count': instance.inboxUnreadMessagesCount,
    };
