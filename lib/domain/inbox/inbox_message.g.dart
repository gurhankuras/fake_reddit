// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inbox_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InboxMessage _$InboxMessageFromJson(Map<String, dynamic> json) => InboxMessage(
      id: json['_id'] as String,
      subredditName: json['subredditName'] as String,
      title: json['title'] as String,
      text: json['text'] as String,
      createdAt: json['createdAt'] as String,
      hasRead: json['hasRead'] as bool,
    );

Map<String, dynamic> _$InboxMessageToJson(InboxMessage instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'subredditName': instance.subredditName,
      'title': instance.title,
      'text': instance.text,
      'createdAt': instance.createdAt,
      'hasRead': instance.hasRead,
    };
