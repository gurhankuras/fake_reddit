// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i30;

import 'application/auth/auth_bloc.dart' as _i25;
import 'application/auth/login_form/login_form_bloc.dart' as _i27;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i11;
import 'application/subreddit/subreddit_bloc.dart' as _i20;
import 'domain/auth/i_auth_service.dart' as _i26;
import 'domain/auth/i_google_auth_service.dart' as _i4;
import 'domain/auth/sign_up_verificator.dart' as _i12;
import 'domain/auth/token_cache_service.dart' as _i31;
import 'domain/feed/i_feed_service.dart' as _i23;
import 'domain/i_image_service.dart' as _i7;
import 'domain/i_key_generator.dart' as _i9;
import 'domain/i_network_connectivity.dart' as _i14;
import 'domain/i_token_cache_service.dart' as _i22;
import 'domain/post/i_post_cache_tagger.dart' as _i15;
import 'domain/subreddit/i_subreddit_service.dart' as _i18;
import 'infastructure/auth/auth_service.dart' as _i32;
import 'infastructure/auth/google_auth_service.dart' as _i5;
import 'infastructure/auth/i_sign_up_verificator.dart' as _i28;
import 'infastructure/core/cache_service.dart' as _i17;
import 'infastructure/core/connectivity_dio_checker.dart' as _i13;
import 'infastructure/core/image_service.dart' as _i8;
import 'infastructure/core/network_connectivity.dart' as _i29;
import 'infastructure/core/simple_key_generator.dart' as _i10;
import 'infastructure/core/token_dio_interceptor.dart' as _i21;
import 'infastructure/feed/fake_feed_service.dart' as _i24;
import 'infastructure/post/post_cache_tagger.dart' as _i16;
import 'infastructure/subreddit/subreddit_service.dart' as _i19;
import 'infastructure/third_party_modules.dart'
    as _i33; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i4.IGoogleAuthService>(
      () => _i5.GoogleAuthService(googleSignIn: get<_i6.GoogleSignIn>()));
  gh.lazySingleton<_i7.IImageService>(() => _i8.ImageService());
  gh.lazySingleton<_i9.IKeyGenerator>(() => _i10.SimpleTypeKeyGenerator());
  gh.lazySingleton<_i11.SignUpFormatValidator>(
      () => _i11.SignUpFormatValidator());
  gh.lazySingleton<_i12.SignUpVerificator>(() => _i12.SignUpVerificator());
  gh.factory<_i13.ConnectivityDioChecker>(
      () => _i13.ConnectivityDioChecker(get<_i14.INetworkConnectivity>()));
  gh.lazySingleton<_i15.IPostCacheTagger>(
      () => _i16.PostCacheTagger(cacheService: get<_i17.CacheService>()));
  gh.lazySingleton<_i18.ISubredditService>(() => _i19.SubredditService(
      dio: get<_i3.Dio>(), tagger: get<_i15.IPostCacheTagger>()));
  gh.factory<_i20.SubredditBloc>(() =>
      _i20.SubredditBloc(subredditService: get<_i18.ISubredditService>()));
  gh.factory<_i21.TokenDioInterceptor>(() => _i21.TokenDioInterceptor(
      tokenCacheService: get<_i22.ITokenCacheService>()));
  gh.lazySingleton<_i23.IFeedService>(
      () => _i24.FakeFeedService(tagger: get<_i15.IPostCacheTagger>()));
  gh.factory<_i25.AuthBloc>(
      () => _i25.AuthBloc(authService: get<_i26.IAuthService>()));
  gh.factory<_i27.LoginFormBloc>(() => _i27.LoginFormBloc(
      authBloc: get<_i25.AuthBloc>(), authService: get<_i26.IAuthService>()));
  gh.factory<_i11.SignUpFormBloc>(() => _i11.SignUpFormBloc(
      authBloc: get<_i25.AuthBloc>(),
      authService: get<_i26.IAuthService>(),
      verificator: get<_i28.ISignUpVerificator>(),
      formatValidator: get<_i11.SignUpFormatValidator>()));
  gh.singleton<_i6.GoogleSignIn>(googleSignInModule.googleSignIn);
  gh.singleton<_i14.INetworkConnectivity>(_i29.NetworkConnectivity());
  await gh.singletonAsync<_i30.SharedPreferences>(() => sharedPrefsModule.prefs,
      preResolve: true);
  gh.singleton<_i17.CacheService>(_i17.CacheService(
      keyGenerator: get<_i9.IKeyGenerator>(),
      prefs: get<_i30.SharedPreferences>()));
  gh.singleton<_i22.ITokenCacheService>(
      _i31.TokenCacheService(cacheService: get<_i17.CacheService>()));
  gh.singleton<_i26.IAuthService>(_i32.AuthService(
      dio: get<_i3.Dio>(),
      tokenService: get<_i22.ITokenCacheService>(),
      googleAuthService: get<_i4.IGoogleAuthService>()));
  return get;
}

class _$DioModule extends _i33.DioModule {}

class _$GoogleSignInModule extends _i33.GoogleSignInModule {}

class _$SharedPrefsModule extends _i33.SharedPrefsModule {}
