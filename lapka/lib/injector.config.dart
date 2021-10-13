// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'injector.dart' as _i20;
import 'providers/global_loader/global_loader_cubit.dart' as _i8;
import 'providers/login/bloc/login_bloc.dart' as _i17;
import 'providers/register/register_bloc.dart' as _i18;
import 'providers/user/user_bloc.dart' as _i19;
import 'repository/identity_api/authentication/authentication_data_source.dart'
    as _i13;
import 'repository/identity_api/authentication/authentication_data_source_impl.dart'
    as _i14;
import 'repository/identity_api/authentication/authentication_repository.dart'
    as _i15;
import 'repository/identity_api/authentication/authentication_repository_impl.dart'
    as _i16;
import 'repository/identity_api/user/user_data_source.dart' as _i9;
import 'repository/identity_api/user/user_data_source_impl.dart' as _i10;
import 'repository/identity_api/user/user_repository.dart' as _i11;
import 'repository/identity_api/user/user_repository_impl.dart' as _i12;
import 'repository/interceptors/auth_interceptor.dart' as _i4;
import 'repository/user/auth_user_store.dart' as _i5;
import 'repository/user/auth_user_store_impl.dart' as _i6;
import 'utils/broadcasters/auth_broadcaster.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.AuthBroadcaster>(() => _i3.AuthBroadcaster());
  gh.factory<_i4.AuthInterceptor>(
      () => _i4.AuthInterceptor(get<_i3.AuthBroadcaster>()));
  gh.lazySingleton<_i5.AuthUserStore>(() => _i6.AuthUserStoreImpl());
  gh.lazySingleton<_i7.Dio>(() => registerModule.identityDio(),
      instanceName: 'Identity');
  gh.lazySingleton<_i8.GlobalLoaderCubit>(() => _i8.GlobalLoaderCubit());
  gh.factory<String>(() => registerModule.identityBaseUrl,
      instanceName: 'BaseUrl');
  gh.factory<_i9.UserDataSource>(
      () => _i10.UserDataSourceImpl(get<_i7.Dio>(instanceName: 'Identity')));
  gh.factory<_i11.UserRepository>(
      () => _i12.UserRepositoryImpl(get<_i9.UserDataSource>()));
  gh.factory<_i13.AuthenticationDataSource>(() =>
      _i14.AuthenticationDataSourceImpl(
          get<_i7.Dio>(instanceName: 'Identity')));
  gh.factory<_i15.AuthenticationRepository>(() =>
      _i16.AuthenticationRepositoryImpl(get<_i13.AuthenticationDataSource>()));
  gh.factory<_i17.LoginBloc>(() => _i17.LoginBloc(
      get<_i15.AuthenticationRepository>(),
      get<_i5.AuthUserStore>(),
      get<_i3.AuthBroadcaster>()));
  gh.factory<_i18.RegisterBloc>(() => _i18.RegisterBloc(
      get<_i15.AuthenticationRepository>(),
      get<_i5.AuthUserStore>(),
      get<_i3.AuthBroadcaster>()));
  gh.lazySingleton<_i19.UserBloc>(() => _i19.UserBloc(
      get<_i15.AuthenticationRepository>(),
      get<_i5.AuthUserStore>(),
      get<_i3.AuthBroadcaster>(),
      get<_i11.UserRepository>()));
  return get;
}

class _$RegisterModule extends _i20.RegisterModule {}
