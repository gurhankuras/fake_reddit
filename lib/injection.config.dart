// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i11;

import 'domain/auth/i_auth_service.dart' as _i14;
import 'domain/auth/token_cache_service.dart' as _i13;
import 'infastructure/core/cache_service.dart' as _i12;
import 'domain/i_key_generator.dart' as _i4;
import 'domain/i_network_connectivity.dart' as _i7;
import 'domain/i_token_cache_service.dart' as _i9;
import 'infastructure/core/simple_key_generator.dart' as _i5;
import 'infastructure/auth/auth_service.dart' as _i15;
import 'infastructure/core/connectivity_dio_checker.dart' as _i6;
import 'infastructure/core/network_connectivity.dart' as _i10;
import 'infastructure/third_party_modules.dart' as _i16;
import 'infastructure/core/token_dio_interceptor.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioModule = _$DioModule();
  final sharedPrefsModule = _$SharedPrefsModule();
  gh.factory<_i3.BaseOptions>(() => dioModule.baseOptions,
      instanceName: 'BaseOptions');
  gh.factory<_i3.Dio>(
      () => dioModule.dio(get<_i3.BaseOptions>(instanceName: 'BaseOptions')));
  gh.lazySingleton<_i4.IKeyGenerator>(() => _i5.SimpleTypeKeyGenerator());
  gh.factory<_i6.ConnectivityDioChecker>(
      () => _i6.ConnectivityDioChecker(get<_i7.INetworkConnectivity>()));
  gh.factory<_i8.TokenDioInterceptor>(() => _i8.TokenDioInterceptor(
      tokenCacheService: get<_i9.ITokenCacheService>()));
  gh.singleton<_i7.INetworkConnectivity>(_i10.NetworkConnectivity());
  await gh.singletonAsync<_i11.SharedPreferences>(() => sharedPrefsModule.prefs,
      preResolve: true);
  gh.singleton<_i12.CacheService>(_i12.CacheService(
      keyGenerator: get<_i4.IKeyGenerator>(),
      prefs: get<_i11.SharedPreferences>()));
  gh.singleton<_i9.ITokenCacheService>(
      _i13.TokenCacheService(cacheService: get<_i12.CacheService>()));
  gh.singleton<_i14.IAuthService>(_i15.AuthService(
      dio: get<_i3.Dio>(), tokenService: get<_i9.ITokenCacheService>()));
  return get;
}

class _$DioModule extends _i16.DioModule {}

class _$SharedPrefsModule extends _i16.SharedPrefsModule {}
