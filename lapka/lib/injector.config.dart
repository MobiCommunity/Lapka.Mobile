// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'domain/auth/use_case/facebook_login_use_case.dart' as _i21;
import 'domain/auth/use_case/google_login_use_case.dart' as _i23;
import 'domain/auth/use_case/logout_use_case.dart' as _i25;
import 'domain/auth/use_case/refresh_token_use_case.dart' as _i27;
import 'domain/user/use_case/fetch_user_data_use_case.dart' as _i22;
import 'injector.dart' as _i31;
import 'providers/global_loader/global_loader_cubit.dart' as _i8;
import 'providers/login/bloc/login_bloc.dart' as _i24;
import 'providers/menu/bloc/menu_bloc.dart' as _i26;
import 'providers/register/register_bloc.dart' as _i28;
import 'repository/identity_api/authentication/authentication_data_source.dart'
    as _i17;
import 'repository/identity_api/authentication/authentication_data_source_impl.dart'
    as _i18;
import 'repository/identity_api/authentication/authentication_repository.dart'
    as _i19;
import 'repository/identity_api/authentication/authentication_repository_impl.dart'
    as _i20;
import 'repository/identity_api/user/user_data_source.dart' as _i11;
import 'repository/identity_api/user/user_data_source_impl.dart' as _i12;
import 'repository/identity_api/user/user_repository.dart' as _i13;
import 'repository/identity_api/user/user_repository_impl.dart' as _i14;
import 'repository/interceptors/auth_interceptor.dart' as _i4;
import 'services/auth_service.dart' as _i29;
import 'services/auth_service_impl.dart' as _i30;
import 'services/facebook_auth_service.dart' as _i6;
import 'services/facebook_auth_service_impl.dart' as _i7;
import 'services/google_sign_in_service.dart' as _i9;
import 'services/google_sign_in_service_impl.dart' as _i10;
import 'services/user_service.dart' as _i15;
import 'services/user_service_impl.dart' as _i16;
import 'utils/broadcasters/auth_broadcaster.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.AuthBroadcaster>(() => _i3.AuthBroadcaster());
  gh.factory<_i4.AuthInterceptor>(() => _i4.AuthInterceptor());
  gh.lazySingleton<_i5.Dio>(() => registerModule.identityDio(),
      instanceName: 'Identity');
  gh.lazySingleton<_i6.FacebookAuthService>(
      () => _i7.FacebookAuthServiceImpl());
  gh.lazySingleton<_i8.GlobalLoaderCubit>(() => _i8.GlobalLoaderCubit());
  gh.lazySingleton<_i9.GoogleSignInService>(
      () => _i10.GoogleSignInServiceImpl());
  gh.factory<String>(() => registerModule.identityBaseUrl,
      instanceName: 'BaseUrl');
  gh.factory<_i11.UserDataSource>(
      () => _i12.UserDataSourceImpl(get<_i5.Dio>(instanceName: 'Identity')));
  gh.factory<_i13.UserRepository>(
      () => _i14.UserRepositoryImpl(get<_i11.UserDataSource>()));
  gh.lazySingleton<_i15.UserService>(() => _i16.UserServiceImpl());
  gh.factory<_i17.AuthenticationDataSource>(() =>
      _i18.AuthenticationDataSourceImpl(
          get<_i5.Dio>(instanceName: 'Identity')));
  gh.factory<_i19.AuthenticationRepository>(() =>
      _i20.AuthenticationRepositoryImpl(get<_i17.AuthenticationDataSource>(),
          get<_i6.FacebookAuthService>(), get<_i9.GoogleSignInService>()));
  gh.factory<_i21.FacebookLoginUseCase>(
      () => _i21.FacebookLoginUseCase(get<_i19.AuthenticationRepository>()));
  gh.factory<_i22.FetchUserDataUseCase>(() => _i22.FetchUserDataUseCase(
      get<_i13.UserRepository>(), get<_i15.UserService>()));
  gh.factory<_i23.GoogleLoginUseCase>(
      () => _i23.GoogleLoginUseCase(get<_i19.AuthenticationRepository>()));
  gh.factory<_i24.LoginBloc>(() => _i24.LoginBloc(
      get<_i19.AuthenticationRepository>(),
      get<_i15.UserService>(),
      get<_i3.AuthBroadcaster>(),
      get<_i21.FacebookLoginUseCase>(),
      get<_i23.GoogleLoginUseCase>()));
  gh.factory<_i25.LogoutUseCase>(() => _i25.LogoutUseCase(
      get<_i19.AuthenticationRepository>(),
      get<_i15.UserService>(),
      get<_i3.AuthBroadcaster>()));
  gh.factory<_i26.MenuBloc>(() => _i26.MenuBloc(get<_i15.UserService>(),
      get<_i3.AuthBroadcaster>(), get<_i22.FetchUserDataUseCase>()));
  gh.factory<_i27.RefreshTokenUseCase>(
      () => _i27.RefreshTokenUseCase(get<_i19.AuthenticationRepository>()));
  gh.factory<_i28.RegisterBloc>(
      () => _i28.RegisterBloc(get<_i19.AuthenticationRepository>()));
  gh.lazySingleton<_i29.AuthService>(() => _i30.AuthServiceImpl(
      get<_i15.UserService>(),
      get<_i3.AuthBroadcaster>(),
      get<_i27.RefreshTokenUseCase>(),
      get<_i22.FetchUserDataUseCase>()));
  return get;
}

class _$RegisterModule extends _i31.RegisterModule {}
