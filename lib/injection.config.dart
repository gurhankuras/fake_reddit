// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i19;

import 'application/auth/auth_bloc.dart' as _i14;
import 'application/auth/login_form/login_form_bloc.dart' as _i16;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i8;
import 'domain/auth/i_auth_service.dart' as _i15;
import 'domain/auth/sign_up_verificator.dart' as _i9;
import 'domain/auth/token_cache_service.dart' as _i21;
import 'domain/i_image_service.dart' as _i4;
import 'domain/i_key_generator.dart' as _i6;
import 'domain/i_network_connectivity.dart' as _i11;
import 'domain/i_token_cache_service.dart' as _i13;
import 'infastructure/auth/auth_service.dart' as _i22;
import 'infastructure/auth/i_sign_up_verificator.dart' as _i17;
import 'infastructure/core/cache_service.dart' as _i20;
import 'infastructure/core/connectivity_dio_checker.dart' as _i10;
import 'infastructure/core/image_service.dart' as _i5;
import 'infastructure/core/network_connectivity.dart' as _i18;
import 'infastructure/core/simple_key_generator.dart' as _i7;
import 'infastructure/core/token_dio_interceptor.dart' as _i12;
import 'infastructure/third_party_modules.dart'
    as _i23; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i4.IImageService>(() => _i5.ImageService());
  gh.lazySingleton<_i6.IKeyGenerator>(() => _i7.SimpleTypeKeyGenerator());
  gh.lazySingleton<_i8.SignUpFormatValidator>(
      () => _i8.SignUpFormatValidator());
  gh.lazySingleton<_i9.SignUpVerificator>(() => _i9.SignUpVerificator());
  gh.factory<_i10.ConnectivityDioChecker>(
      () => _i10.ConnectivityDioChecker(get<_i11.INetworkConnectivity>()));
  gh.factory<_i12.TokenDioInterceptor>(() => _i12.TokenDioInterceptor(
      tokenCacheService: get<_i13.ITokenCacheService>()));
  gh.factory<_i14.AuthBloc>(
      () => _i14.AuthBloc(authService: get<_i15.IAuthService>()));
  gh.factory<_i16.LoginFormBloc>(() => _i16.LoginFormBloc(
      authBloc: get<_i14.AuthBloc>(), authService: get<_i15.IAuthService>()));
  gh.factory<_i8.SignUpFormBloc>(() => _i8.SignUpFormBloc(
      authBloc: get<_i14.AuthBloc>(),
      authService: get<_i15.IAuthService>(),
      verificator: get<_i17.ISignUpVerificator>(),
      formatValidator: get<_i8.SignUpFormatValidator>()));
  gh.singleton<_i11.INetworkConnectivity>(_i18.NetworkConnectivity());
  await gh.singletonAsync<_i19.SharedPreferences>(() => sharedPrefsModule.prefs,
      preResolve: true);
  gh.singleton<_i20.CacheService>(_i20.CacheService(
      keyGenerator: get<_i6.IKeyGenerator>(),
      prefs: get<_i19.SharedPreferences>()));
  gh.singleton<_i13.ITokenCacheService>(
      _i21.TokenCacheService(cacheService: get<_i20.CacheService>()));
  gh.singleton<_i15.IAuthService>(_i22.AuthService(
      dio: get<_i3.Dio>(), tokenService: get<_i13.ITokenCacheService>()));
  return get;
}

class _$DioModule extends _i23.DioModule {}

class _$SharedPrefsModule extends _i23.SharedPrefsModule {}
