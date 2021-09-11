import 'package:json_annotation/json_annotation.dart';
part 'chat_message_dto.g.dart';

@JsonSerializable()
class ChatMessageDTO {
  @JsonKey(name: '_id')
  final String? id;
  final String roomId;
  final ChatMessageUserDTO user;
  final String text;
  final String? createdAt;

  ChatMessageDTO({
    this.id,
    required this.roomId,
    required this.user,
    required this.text,
    this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'message_id': id,
      'room_id': roomId,
      'text': text,
      'created_at': createdAt,
      'user_id': user.id,
      'username': user.name,
      'user_avatar': user.avatar
    };
  }

  factory ChatMessageDTO.fromMap(Map<String, dynamic> map) => ChatMessageDTO(
        roomId: map['room_id'],
        text: map['text'],
        user: ChatMessageUserDTO(
            avatar: map['user_avatar'],
            id: map['user_id'],
            name: map['username']),
        createdAt: map['created_at'],
        id: map['message_id'],
      );
  // return {
  //   'message_id': id,
  //   'room_id': roomId,
  //   'text': text,
  //   'created_at': createdAt,
  //   'user_id': user.id,
  //   'username': user.name,
  //   'user_avatar': user.avatar
  // };
  // }

  factory ChatMessageDTO.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageDTOFromJson(json);
  Map<String, dynamic> toJson() => _$ChatMessageDTOToJson(this);
}

@JsonSerializable()
class ChatMessageUserDTO {
  final String name;
  final String id;
  final String avatar;

  ChatMessageUserDTO({
    required this.name,
    required this.id,
    required this.avatar,
  });

  factory ChatMessageUserDTO.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageUserDTOFromJson(json);
  Map<String, dynamic> toJson() => _$ChatMessageUserDTOToJson(this);
}
