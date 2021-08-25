import 'package:json_annotation/json_annotation.dart';
import '../domain/user.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDTO {
  final String nickname;
  final String image;
  UserDTO({
    required this.nickname,
    required this.image,
  });

  User toDomain() => User(image: image, nickname: nickname);
  factory UserDTO.fromDomain(User user) =>
      UserDTO(nickname: user.nickname, image: user.image);

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);
  Map<String, dynamic> toJson() => _$UserDTOToJson(this);
}
