// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i24;

import 'application/auth/auth_bloc.dart' as _i19;
import 'application/auth/login_form/login_form_bloc.dart' as _i21;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i13;
import 'domain/auth/i_auth_service.dart' as _i20;
import 'domain/auth/i_google_auth_service.dart' as _i6;
import 'domain/auth/sign_up_verificator.dart' as _i14;
import 'domain/auth/token_cache_service.dart' as _i26;
import 'domain/community/i_community_service.dart' as _i4;
import 'domain/i_image_service.dart' as _i9;
import 'domain/i_key_generator.dart' as _i11;
import 'domain/i_network_connectivity.dart' as _i16;
import 'domain/i_token_cache_service.dart' as _i18;
import 'infastructure/auth/auth_service.dart' as _i27;
import 'infastructure/auth/google_auth_service.dart' as _i7;
import 'infastructure/auth/i_sign_up_verificator.dart' as _i22;
import 'infastructure/community/community_service.dart' as _i5;
import 'infastructure/core/cache_service.dart' as _i25;
import 'infastructure/core/connectivity_dio_checker.dart' as _i15;
import 'infastructure/core/image_service.dart' as _i10;
import 'infastructure/core/network_connectivity.dart' as _i23;
import 'infastructure/core/simple_key_generator.dart' as _i12;
import 'infastructure/core/token_dio_interceptor.dart' as _i17;
import 'infastructure/third_party_modules.dart'
    as _i28; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioModule = _$DioModule();
  final googleSignInModule = _$GoogleSignInModule();
  final sharedPrefsModule = _$SharedPrefsModule();
  gh.factory<_i3.BaseOptions>(() => dioModule.baseOptions,
      instanceName: 'BaseOptions');
  gh.factory<_i3.Dio>(
      () => dioModule.dio(get<_i3.BaseOptions>(instanceName: 'BaseOptions')));
  gh.lazySingleton<_i4.ICommunityService>(
      () => _i5.CommunityService(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i6.IGoogleAuthService>(
      () => _i7.GoogleAuthService(googleSignIn: get<_i8.GoogleSignIn>()));
  gh.lazySingleton<_i9.IImageService>(() => _i10.ImageService());
  gh.lazySingleton<_i11.IKeyGenerator>(() => _i12.SimpleTypeKeyGenerator());
  gh.lazySingleton<_i13.SignUpFormatValidator>(
      () => _i13.SignUpFormatValidator());
  gh.lazySingleton<_i14.SignUpVerificator>(() => _i14.SignUpVerificator());
  gh.factory<_i15.ConnectivityDioChecker>(
      () => _i15.ConnectivityDioChecker(get<_i16.INetworkConnectivity>()));
  gh.factory<_i17.TokenDioInterceptor>(() => _i17.TokenDioInterceptor(
      tokenCacheService: get<_i18.ITokenCacheService>()));
  gh.factory<_i19.AuthBloc>(
      () => _i19.AuthBloc(authService: get<_i20.IAuthService>()));
  gh.factory<_i21.LoginFormBloc>(() => _i21.LoginFormBloc(
      authBloc: get<_i19.AuthBloc>(), authService: get<_i20.IAuthService>()));
  gh.factory<_i13.SignUpFormBloc>(() => _i13.SignUpFormBloc(
      authBloc: get<_i19.AuthBloc>(),
      authService: get<_i20.IAuthService>(),
      verificator: get<_i22.ISignUpVerificator>(),
      formatValidator: get<_i13.SignUpFormatValidator>()));
  gh.singleton<_i8.GoogleSignIn>(googleSignInModule.googleSignIn);
  gh.singleton<_i16.INetworkConnectivity>(_i23.NetworkConnectivity());
  await gh.singletonAsync<_i24.SharedPreferences>(() => sharedPrefsModule.prefs,
      preResolve: true);
  gh.singleton<_i25.CacheService>(_i25.CacheService(
      keyGenerator: get<_i11.IKeyGenerator>(),
      prefs: get<_i24.SharedPreferences>()));
  gh.singleton<_i18.ITokenCacheService>(
      _i26.TokenCacheService(cacheService: get<_i25.CacheService>()));
  gh.singleton<_i20.IAuthService>(_i27.AuthService(
      dio: get<_i3.Dio>(),
      tokenService: get<_i18.ITokenCacheService>(),
      googleAuthService: get<_i6.IGoogleAuthService>()));
  return get;
}

class _$DioModule extends _i28.DioModule {}

class _$GoogleSignInModule extends _i28.GoogleSignInModule {}

class _$SharedPrefsModule extends _i28.SharedPrefsModule {}
