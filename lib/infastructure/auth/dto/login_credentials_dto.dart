import 'package:reddit_clone/domain/auth/model/credentials.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_clone/domain/auth/model/login_credentials.dart';

part 'login_credentials_dto.freezed.dart';
part 'login_credentials_dto.g.dart';

@freezed
class LoginCredentialsDTO with _$LoginCredentialsDTO {
  const LoginCredentialsDTO._();

  factory LoginCredentialsDTO({
    String? password,
    String? username,
  }) = _LoginCredentialsDTO;

  LoginCredentials toDomain() => LoginCredentials(
        username: username!,
        password: password!,
      );

  factory LoginCredentialsDTO.fromDomain(LoginCredentials userTokens) =>
      LoginCredentialsDTO(
        password: userTokens.password,
        username: userTokens.username,
      );

  factory LoginCredentialsDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginCredentialsDTOFromJson(json);
}
