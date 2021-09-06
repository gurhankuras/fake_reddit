// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMessageDTO _$ChatMessageDTOFromJson(Map<String, dynamic> json) =>
    ChatMessageDTO(
      id: json['_id'] as String?,
      roomId: json['roomId'] as String,
      user: ChatMessageUserDTO.fromJson(json['user'] as Map<String, dynamic>),
      text: json['text'] as String,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$ChatMessageDTOToJson(ChatMessageDTO instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'roomId': instance.roomId,
      'user': instance.user,
      'text': instance.text,
      'createdAt': instance.createdAt,
    };

ChatMessageUserDTO _$ChatMessageUserDTOFromJson(Map<String, dynamic> json) =>
    ChatMessageUserDTO(
      name: json['name'] as String,
      id: json['id'] as String,
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$ChatMessageUserDTOToJson(ChatMessageUserDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'avatar': instance.avatar,
    };
