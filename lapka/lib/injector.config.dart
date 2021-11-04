// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'domain/auth/use_case/logout_use_case.dart' as _i19;
import 'domain/auth/use_case/refresh_token_use_case.dart' as _i21;
import 'domain/user/use_case/fetch_user_data_use_case.dart' as _i17;
import 'injector.dart' as _i25;
import 'providers/global_loader/global_loader_cubit.dart' as _i6;
import 'providers/login/bloc/login_bloc.dart' as _i18;
import 'providers/menu/bloc/menu_bloc.dart' as _i20;
import 'providers/register/register_bloc.dart' as _i22;
import 'repository/identity_api/authentication/authentication_data_source.dart'
    as _i13;
import 'repository/identity_api/authentication/authentication_data_source_impl.dart'
    as _i14;
import 'repository/identity_api/authentication/authentication_repository.dart'
    as _i15;
import 'repository/identity_api/authentication/authentication_repository_impl.dart'
    as _i16;
import 'repository/identity_api/user/user_data_source.dart' as _i7;
import 'repository/identity_api/user/user_data_source_impl.dart' as _i8;
import 'repository/identity_api/user/user_repository.dart' as _i9;
import 'repository/identity_api/user/user_repository_impl.dart' as _i10;
import 'repository/interceptors/auth_interceptor.dart' as _i4;
import 'services/auth_service.dart' as _i23;
import 'services/auth_service_impl.dart' as _i24;
import 'services/user_service.dart' as _i11;
import 'services/user_service_impl.dart' as _i12;
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
  gh.lazySingleton<_i6.GlobalLoaderCubit>(() => _i6.GlobalLoaderCubit());
  gh.factory<String>(() => registerModule.identityBaseUrl,
      instanceName: 'BaseUrl');
  gh.factory<_i7.UserDataSource>(
      () => _i8.UserDataSourceImpl(get<_i5.Dio>(instanceName: 'Identity')));
  gh.factory<_i9.UserRepository>(
      () => _i10.UserRepositoryImpl(get<_i7.UserDataSource>()));
  gh.lazySingleton<_i11.UserService>(() => _i12.UserServiceImpl());
  gh.factory<_i13.AuthenticationDataSource>(() =>
      _i14.AuthenticationDataSourceImpl(
          get<_i5.Dio>(instanceName: 'Identity')));
  gh.factory<_i15.AuthenticationRepository>(() =>
      _i16.AuthenticationRepositoryImpl(get<_i13.AuthenticationDataSource>()));
  gh.factory<_i17.FetchUserDataUseCase>(() => _i17.FetchUserDataUseCase(
      get<_i9.UserRepository>(), get<_i11.UserService>()));
  gh.factory<_i18.LoginBloc>(() => _i18.LoginBloc(
      get<_i15.AuthenticationRepository>(),
      get<_i11.UserService>(),
      get<_i3.AuthBroadcaster>()));
  gh.factory<_i19.LogoutUseCase>(() => _i19.LogoutUseCase(
      get<_i15.AuthenticationRepository>(), get<_i11.UserService>()));
  gh.lazySingleton<_i20.MenuBloc>(() => _i20.MenuBloc(
      get<_i11.UserService>(),
      get<_i3.AuthBroadcaster>(),
      get<_i9.UserRepository>(),
      get<_i19.LogoutUseCase>()));
  gh.factory<_i21.RefreshTokenUseCase>(
      () => _i21.RefreshTokenUseCase(get<_i15.AuthenticationRepository>()));
  gh.factory<_i22.RegisterBloc>(
      () => _i22.RegisterBloc(get<_i15.AuthenticationRepository>()));
  gh.lazySingleton<_i23.AuthService>(() => _i24.AuthServiceImpl(
      get<_i11.UserService>(),
      get<_i3.AuthBroadcaster>(),
      get<_i21.RefreshTokenUseCase>(),
      get<_i17.FetchUserDataUseCase>()));
  return get;
}

class _$RegisterModule extends _i25.RegisterModule {}
