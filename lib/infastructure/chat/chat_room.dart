import 'package:json_annotation/json_annotation.dart';

part 'chat_room.g.dart';

@JsonSerializable()
class ChatRoom {
  @JsonKey(name: '_id')
  final String id;
  final DateTime createdAt;
  final LastMessage lastMessage;
  final ChatUser user;
  final String avatar;
  ChatRoom({
    required this.id,
    required this.createdAt,
    required this.lastMessage,
    required this.user,
    required this.avatar,
  });

  factory ChatRoom.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomFromJson(json);
  Map<String, dynamic> toJson() => _$ChatRoomToJson(this);
}

@JsonSerializable()
class ChatUser {
  final String id;
  final DateTime joinedAt;
  @JsonKey(name: 'unread_msg_count')
  final int unreadMessageCount;
  ChatUser({
    required this.id,
    required this.joinedAt,
    required this.unreadMessageCount,
  });

  factory ChatUser.fromJson(Map<String, dynamic> json) =>
      _$ChatUserFromJson(json);
  Map<String, dynamic> toJson() => _$ChatUserToJson(this);
}

@JsonSerializable()
class LastMessage {
  final DateTime createdAt;
  @JsonKey(name: 'sender_name')
  final String senderName;
  final String text;
  LastMessage({
    required this.createdAt,
    required this.senderName,
    required this.text,
  });

  factory LastMessage.fromJson(Map<String, dynamic> json) =>
      _$LastMessageFromJson(json);
  Map<String, dynamic> toJson() => _$LastMessageToJson(this);
}
