// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'injector.dart' as _i12;
import 'providers/authentication/bloc/authentication_bloc.dart' as _i11;
import 'repository/identity_api/authentication/authentication_data_source.dart'
    as _i7;
import 'repository/identity_api/authentication/authentication_data_source_impl.dart'
    as _i8;
import 'repository/identity_api/authentication/authentication_repository.dart'
    as _i9;
import 'repository/identity_api/authentication/authentication_repository_impl.dart'
    as _i10;
import 'repository/interceptors/auth_interceptor.dart' as _i3;
import 'repository/user/auth_user_store.dart' as _i4;
import 'repository/user/auth_user_store_impl.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AuthInterceptor>(() => _i3.AuthInterceptor());
  gh.lazySingleton<_i4.AuthUserStore>(() => _i5.AuthUserStoreImpl());
  gh.lazySingleton<_i6.Dio>(() => registerModule.identityDio(),
      instanceName: 'Identity');
  gh.factory<String>(() => registerModule.identityBaseUrl,
      instanceName: 'BaseUrl');
  gh.factory<_i7.AuthenticationDataSource>(() =>
      _i8.AuthenticationDataSourceImpl(get<_i6.Dio>(instanceName: 'Identity')));
  gh.factory<_i9.AuthenticationRepository>(() =>
      _i10.AuthenticationRepositoryImpl(get<_i7.AuthenticationDataSource>()));
  gh.factory<_i11.AuthenticationBloc>(() => _i11.AuthenticationBloc(
      get<_i9.AuthenticationRepository>(), get<_i4.AuthUserStore>()));
  return get;
}

class _$RegisterModule extends _i12.RegisterModule {}
