// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i9;
import 'package:fresh_dio/fresh_dio.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'injector.dart' as _i21;
import 'providers/global_loader/global_loader_cubit.dart' as _i13;
import 'providers/login/bloc/login_bloc.dart' as _i14;
import 'providers/register/register_bloc.dart' as _i15;
import 'providers/user/user_bloc.dart' as _i20;
import 'repository/identity_api/authentication/authentication_data_source.dart'
    as _i7;
import 'repository/identity_api/authentication/authentication_data_source_impl.dart'
    as _i8;
import 'repository/identity_api/authentication/authentication_repository.dart'
    as _i10;
import 'repository/identity_api/authentication/authentication_repository_impl.dart'
    as _i11;
import 'repository/identity_api/user/user_data_source.dart' as _i16;
import 'repository/identity_api/user/user_data_source_impl.dart' as _i17;
import 'repository/identity_api/user/user_repository.dart' as _i18;
import 'repository/identity_api/user/user_repository_impl.dart' as _i19;
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
  gh.factory<_i7.AuthenticationDataSource>(() =>
      _i8.AuthenticationDataSourceImpl(get<_i9.Dio>(instanceName: 'Identity')));
  gh.factory<_i10.AuthenticationRepository>(() =>
      _i11.AuthenticationRepositoryImpl(get<_i7.AuthenticationDataSource>()));
  gh.lazySingleton<_i12.Dio>(() => registerModule.identityDio(),
      instanceName: 'Identity');
  gh.lazySingleton<_i13.GlobalLoaderCubit>(() => _i13.GlobalLoaderCubit());
  gh.factory<_i14.LoginBloc>(() => _i14.LoginBloc(
      get<_i10.AuthenticationRepository>(),
      get<_i5.AuthUserStore>(),
      get<_i3.AuthBroadcaster>()));
  gh.factory<_i15.RegisterBloc>(() => _i15.RegisterBloc(
      get<_i10.AuthenticationRepository>(),
      get<_i5.AuthUserStore>(),
      get<_i3.AuthBroadcaster>()));
  gh.factory<String>(() => registerModule.identityBaseUrl,
      instanceName: 'BaseUrl');
  gh.factory<_i16.UserDataSource>(
      () => _i17.UserDataSourceImpl(get<_i9.Dio>(instanceName: 'Identity')));
  gh.factory<_i18.UserRepository>(
      () => _i19.UserRepositoryImpl(get<_i16.UserDataSource>()));
  gh.factory<_i20.UserBloc>(() => _i20.UserBloc(
      get<_i10.AuthenticationRepository>(),
      get<_i5.AuthUserStore>(),
      get<_i3.AuthBroadcaster>(),
      get<_i18.UserRepository>()));
  return get;
}

class _$RegisterModule extends _i21.RegisterModule {}
