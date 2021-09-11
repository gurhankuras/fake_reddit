import 'package:reddit_clone/infastructure/chat/chat_message_dto.dart';

import 'package:json_annotation/json_annotation.dart';
part 'chat_messages_response.g.dart';

@JsonSerializable()
class ChatMessagesResponse {
  final List<ChatMessageDTO> messages;
  final String? fetchedAt;

  const ChatMessagesResponse({
    required this.messages,
    required this.fetchedAt,
  });

  factory ChatMessagesResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ChatMessagesResponseToJson(this);
}
