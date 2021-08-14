import 'package:dartz/dartz.dart';
import '../core/general_failures.dart';
import '../../infastructure/core/cache_service.dart';
import '../i_token_cache_service.dart';
import 'package:injectable/injectable.dart';

abstract class TokenKeys {
  static const ACCESS_TOKEN_KEY = '@ACCESS_TOKEN_KEY';
  static const REFRESH_TOKEN_KEY = '@REFRESH_TOKEN_KEY';
}

@Singleton(as: ITokenCacheService)
class TokenCacheService extends ITokenCacheService {
  final CacheService cacheService;

  TokenCacheService({required this.cacheService});

  @override
  Future<Either<GeneralFailure, String>> getAccessToken() {
    return cacheService.getString(TokenKeys.ACCESS_TOKEN_KEY);
  }

  @override
  Future<Either<GeneralFailure, String>> getRefreshToken() async {
    return cacheService.getString(TokenKeys.REFRESH_TOKEN_KEY);
  }

  @override
  Future<Either<GeneralFailure, Unit>> setAccessToken(String token) {
    cacheService.setString(TokenKeys.ACCESS_TOKEN_KEY, token);
    return Future.value(right(unit));
  }

  @override
  Future<Either<GeneralFailure, Unit>> setRefreshToken(String token) {
    cacheService.setString(TokenKeys.REFRESH_TOKEN_KEY, token);
    return Future.value(right(unit));
  }

  @override
  Future<bool> clear() async {
    final success = await Future.wait([
      cacheService.remove(TokenKeys.ACCESS_TOKEN_KEY),
      cacheService.remove(TokenKeys.REFRESH_TOKEN_KEY)
    ]);
    return success.every((s) => s);
  }
}
