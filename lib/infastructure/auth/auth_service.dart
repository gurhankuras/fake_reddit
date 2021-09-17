import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:reddit_clone/domain/auth/model/user.dart';
import 'package:reddit_clone/domain/core/constants/endpoints.dart';
import 'package:reddit_clone/domain/core/failure.dart';
import 'package:reddit_clone/domain/core/response_error.dart';
import 'package:reddit_clone/infastructure/core/dio_error_handler.dart';

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_service.dart';
import '../../domain/auth/i_google_auth_service.dart';
import '../../domain/auth/model/credentials.dart';
import '../../domain/auth/model/login_credentials.dart';
import '../../domain/i_token_cache_service.dart';
import '../../injection.dart';
import '../../utility/app_logger.dart';
import '../core/connectivity_dio_checker.dart';
import '../core/token_dio_interceptor.dart';
import 'dto/credentials_dto.dart';
import 'dto/login_credentials_dto.dart';
import 'dto/user_tokens_dto.dart';

part './auth_service_failure_handlers.dart';

@Singleton(as: IAuthService)
class AuthService implements IAuthService {
  final Dio dio;
  final ITokenCacheService tokenService;
  final IGoogleAuthService googleAuthService;

  AuthService({
    required this.dio,
    required this.tokenService,
    required this.googleAuthService,
  }) {
    // kDebugMode
    //     ? dio.interceptors.add(PrettyDioLogger(
    //         error: true,
    //         logPrint: log.i,
    //         maxWidth: 200,
    //         request: true,
    //         requestBody: true,
    //         requestHeader: true,
    //         responseBody: true,
    //         responseHeader: true,
    //         compact: false,
    //       ))
    //     : null;
    dio.interceptors.add(getIt<ConnectivityDioChecker>());
    dio.interceptors.add(getIt<TokenDioInterceptor>());
  }

  // - app has been downloaded first time
  // - refresh token expired
  // - user logged out explicitly
  @override
  Future<Either<Failure, Unit>> loginWithEmail({
    required LoginCredentials credentials,
  }) async {
    final credentialsDto = LoginCredentialsDTO.fromDomain(credentials).toJson();
    try {
      final response = await dio.post(Endpoints.login, data: credentialsDto);
      return right(unit);
    } catch (error) {
      // handle other errors before makeRemoteFailure

      final failure = makeRemoteFailure(error, makeFailureLogin);
      return left(failure);
    }
  }

  @override
  Future<Either<Failure, Unit>> signUp({
    required Credentials credentials,
  }) async {
    final credentialsDto = CredentialsDTO.fromDomain(credentials).toJson();
    try {
      final response = await dio.post(Endpoints.register, data: credentialsDto);
      return right(unit);
    } catch (error) {
      // handle other errors before makeRemoteFailure

      final failure = makeRemoteFailure(error, makeFailureRegister);
      return left(failure);
    }
  }

  @override
  Future<Either<Failure, User>> getCurrentUser() async {
    try {
      final response = await dio.get(Endpoints.protected);
      final data = response.data;
      final user = User.fromJson(data);
      return right(user);
    } on TypeError catch (_) {
      print(_);
      print(_.stackTrace);
      return left(BadResponseData('corrupt data'));
    } catch (error) {
      final failure = makeRemoteFailure(error, makeProtectedFailure);
      return left(failure);
    }
  }

  //TODO:  refactor, I may change the function's signature
  @override
  Future<void> logOut() async {
    try {
      // final response = await dio.delete(
      //   '/sessions',
      // );

      // if (response.statusCode == HttpStatus.ok) {
      await tokenService.clear();
      // await googleAuthService.logOut();
      // }
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

  @override
  Future<Either<Failure, Unit>> loginWithGoogle() async {
    final userOrFailure = await googleAuthService.login();
    try {
      final user = userOrFailure.fold(
        (failure) => null,
        (user) => user,
      );
      if (user == null) {
        return left(Failure(""));
      }

      final response = await dio.post(
        '/sessions?google=true',
        data: {
          'email': user.email,
          'password': 'sssssssss',
          'username': 'sssssssssss'
        },
      );

      if (response.statusCode != HttpStatus.ok) {
        return left(const Failure(""));
      }
      if (response.data is Map) {
        final tokens = UserTokensDTO.fromJson(response.data).toDomain();
        // ignore: unawaited_futures
        tokenService.setAccessToken(tokens.accessToken);
        // ignore: unawaited_futures
        tokenService.setRefreshToken(tokens.refreshToken);
        return right(unit);
      }
      return left(const Failure(""));
    } catch (e) {
      return left(const Failure(""));
    }
  }

  @override
  Future<Either<Failure, Unit>> signUpWithGoogle() async {
    final userOrFailure = await googleAuthService.login();
    final user = userOrFailure.fold(
      (failure) => null,
      (user) => user,
    );
    if (user == null) {
      return left(Failure(""));
    }
    try {
      final response = await dio.post(
        '/users?google=true',
        data: {
          'email': user.email,
          'username': 'fffffffffffff',
          'password': 'ddddddddddddddd',
        },
      );

      if (response.statusCode != HttpStatus.ok) {
        return left(const Failure(""));
      }
      if (response.data is Map) {
        return right(unit);
      }
      return left(const Failure(""));
    } catch (e) {
      return left(const Failure(""));
    }
  }
}
