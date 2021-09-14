// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatRoom _$ChatRoomFromJson(Map<String, dynamic> json) => ChatRoom(
      id: json['_id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastMessage:
          LastMessage.fromJson(json['lastMessage'] as Map<String, dynamic>),
      user: ChatUser.fromJson(json['user'] as Map<String, dynamic>),
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$ChatRoomToJson(ChatRoom instance) => <String, dynamic>{
      '_id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastMessage': instance.lastMessage,
      'user': instance.user,
      'avatar': instance.avatar,
    };

ChatUser _$ChatUserFromJson(Map<String, dynamic> json) => ChatUser(
      id: json['id'] as String,
      joinedAt: DateTime.parse(json['joinedAt'] as String),
      unreadMessageCount: json['unread_msg_count'] as int,
    );

Map<String, dynamic> _$ChatUserToJson(ChatUser instance) => <String, dynamic>{
      'id': instance.id,
      'joinedAt': instance.joinedAt.toIso8601String(),
      'unread_msg_count': instance.unreadMessageCount,
    };

LastMessage _$LastMessageFromJson(Map<String, dynamic> json) => LastMessage(
      createdAt: json['createdAt'] as String,
      senderName: json['sender_name'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$LastMessageToJson(LastMessage instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'sender_name': instance.senderName,
      'text': instance.text,
    };
