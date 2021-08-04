import 'package:reddit_clone/domain/auth/model/credentials.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'credentials_dto.freezed.dart';
part 'credentials_dto.g.dart';

@freezed
class CredentialsDTO with _$CredentialsDTO {
  const CredentialsDTO._();

  factory CredentialsDTO({String? email, String? password, String? username}) =
      _CredentialsDTO;

  Credentials toDomain() => Credentials(
        email: email!,
        password: password!,
        username: username!,
      );

  factory CredentialsDTO.fromDomain(Credentials userTokens) => CredentialsDTO(
        email: userTokens.email,
        password: userTokens.password,
        username: userTokens.username,
      );

  factory CredentialsDTO.fromJson(Map<String, dynamic> json) =>
      _$CredentialsDTOFromJson(json);
}
