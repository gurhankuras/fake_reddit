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


// {
//         "_id": "6130abe42beeb448f329ef73",
//         "roomId": "612cc72f65a882665306cc0e",
//         "user": {
//             "id": "610d52b15d5e8b1ee8970cc7",
//             "name": "Emre",
//             "avatar": "https://i.redd.it/26s9eejm8vz51.png"
//         },
//         "text": "aynen cok uzadi",
//         "createdAt": "2021-09-02T10:48:04.793Z",
//         "updatedAt": "2021-09-02T10:48:04.793Z",
//         "__v": 0
//     }