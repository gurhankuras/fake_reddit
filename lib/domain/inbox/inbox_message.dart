import 'package:json_annotation/json_annotation.dart';
import 'inbox_message.g.dart';

@JsonSerializable()
class InboxMessage {
  @JsonKey(name: '_id')
  final String id;
  final String subredditName;
  final String title;
  final String text;
  final String createdAt;
  final bool hasRead;

  const InboxMessage({
    required this.id,
    required this.subredditName,
    required this.title,
    required this.text,
    required this.createdAt,
    required this.hasRead,
  });

  InboxMessage copyWith({
    String? id,
    String? subredditName,
    String? title,
    String? text,
    String? createdAt,
    bool? hasRead,
  }) {
    return InboxMessage(
      id: id ?? this.id,
      subredditName: subredditName ?? this.subredditName,
      title: title ?? this.title,
      text: text ?? this.text,
      createdAt: createdAt ?? this.createdAt,
      hasRead: hasRead ?? this.hasRead,
    );
  }

  @override
  String toString() {
    return 'InboxMessage(id: $id, subredditName: $subredditName, title: $title, text: $text, createdAt: $createdAt, hasRead: $hasRead)';
  }

  factory InboxMessage.fromJson(Map<String, dynamic> json) =>
      _$InboxMessageFromJson(json);
  Map<String, dynamic> toJson() => _$InboxMessageToJson(this);
}
