import 'package:reddit_clone/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:reddit_clone/domain/auth/i_auth_service.dart';

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:reddit_clone/domain/auth/model/credentials.dart';
import 'package:reddit_clone/domain/auth/model/login_credentials.dart';
import 'package:reddit_clone/domain/i_token_cache_service.dart';
import 'package:reddit_clone/infastructure/auth/dto/credentials_dto.dart';
import 'package:reddit_clone/infastructure/auth/dto/login_credentials_dto.dart';
import 'package:reddit_clone/infastructure/auth/dto/user_tokens_dto.dart';
import 'package:reddit_clone/infastructure/core/connectivity_dio_checker.dart';
import 'package:reddit_clone/infastructure/core/token_dio_interceptor.dart';
import 'package:reddit_clone/utility/app_logger.dart';

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_service.dart';
import '../../injection.dart';

@Singleton(as: IAuthService)
class AuthService implements IAuthService {
  final Dio dio;
  final ITokenCacheService tokenService;

  AuthService({
    required this.dio,
    required this.tokenService,
  }) {
    kDebugMode
        ? dio.interceptors.add(PrettyDioLogger(
            error: true,
            logPrint: log.i,
            maxWidth: 200,
            request: true,
            requestBody: true,
            requestHeader: true,
            responseBody: true,
            responseHeader: true,
            compact: false,
          ))
        : null;
    dio.interceptors.add(getIt<ConnectivityDioChecker>());
    dio.interceptors.add(getIt<TokenDioInterceptor>());
  }

  // - app has been downloaded first time
  // - refresh token expired
  // - user logged out explicitly
  @override
  Future<Either<AuthFailure, Unit>> loginWithEmail({
    required LoginCredentials credentials,
  }) async {
    try {
      final response = await dio.post(
        '/sessions',
        data: LoginCredentialsDTO.fromDomain(credentials).toJson(),
      );

      if (response.statusCode != HttpStatus.ok) {
        return left(const AuthFailure.serverError());
      }
      if (response.data is Map) {
        final tokens = UserTokensDTO.fromJson(response.data).toDomain();
        // ignore: unawaited_futures
        tokenService.setAccessToken(tokens.accessToken);
        // ignore: unawaited_futures
        tokenService.setRefreshToken(tokens.refreshToken);
        return right(unit);
      }
      return left(const AuthFailure.serverError());
    } catch (e) {
      return left(mapTryErrorToFailure(e));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signUp({
    required Credentials credentials,
  }) async {
    try {
      final response = await dio.post(
        '/users',
        data: CredentialsDTO.fromDomain(credentials).toJson(),
      );

      if (response.statusCode != HttpStatus.ok) {
        return left(const AuthFailure.serverError());
      }
      if (response.data is Map) {
        final tokens = UserTokensDTO.fromJson(response.data).toDomain();
        // ignore: unawaited_futures
        tokenService.setAccessToken(tokens.accessToken);
        // ignore: unawaited_futures
        tokenService.setRefreshToken(tokens.refreshToken);
        return right(unit);
      }
      return left(const AuthFailure.serverError());
    } catch (e) {
      return left(mapTryErrorToFailure(e));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> checkIfUserHasTokens() async {
    try {
      final response = await dio.get('/protected');
      print(response);
      if (response.statusCode == HttpStatus.forbidden) {
        return left(AuthFailure.tokenNotFound());
      } else if (response.statusCode != HttpStatus.ok) {
        return left(AuthFailure.serverError());
      }
      return right(unit);
    } catch (e) {
      return left(mapTryErrorToFailure(e));
    }
  }

  //TODO:  refactor, I may change the function's signature
  @override
  Future<void> logOut() async {
    try {
      final response = await dio.delete(
        '/sessions',
      );

      if (response.statusCode == HttpStatus.ok) {
        await tokenService.clear();
      }
    } on DioError catch (_) {
      //   if (e.error is NotConnected) {
      //     return left(e.error);
      //   }
      //   print(e);
      //   return left(AuthFailure.serverError());
      // } catch (e) {
      //   return left(AuthFailure.unexpected());
    }
  }
}

AuthFailure mapTryErrorToFailure(Object e) {
  if (e is DioError) {
    if (e.error is NotConnected) {
      return e.error;
    }
    return AuthFailure.serverError();
  }
  return AuthFailure.unexpected();
}

// error: true,
// logPrint: log.i,
// maxWidth: 200,
// request: true,
// requestBody: true,
// requestHeader: true,
// responseBody: true,
// responseHeader: true,
// compact: false,
