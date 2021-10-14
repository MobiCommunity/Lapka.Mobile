// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'injector.dart' as _i27;
import 'providers/adopt_pet/bloc/adopt_pet_details_bloc.dart' as _i17;
import 'providers/adopt_pet/bloc/adopt_pet_list_bloc.dart' as _i18;
import 'providers/adopt_pet/bloc/like_pet_bloc.dart' as _i23;
import 'providers/global_loader/global_loader_cubit.dart' as _i8;
import 'providers/login/bloc/login_bloc.dart' as _i24;
import 'providers/register/register_bloc.dart' as _i25;
import 'providers/user/user_bloc.dart' as _i26;
import 'repository/identity_api/authentication/authentication_data_source.dart'
    as _i19;
import 'repository/identity_api/authentication/authentication_data_source_impl.dart'
    as _i20;
import 'repository/identity_api/authentication/authentication_repository.dart'
    as _i21;
import 'repository/identity_api/authentication/authentication_repository_impl.dart'
    as _i22;
import 'repository/identity_api/user/user_data_source.dart' as _i13;
import 'repository/identity_api/user/user_data_source_impl.dart' as _i14;
import 'repository/identity_api/user/user_repository.dart' as _i15;
import 'repository/identity_api/user/user_repository_impl.dart' as _i16;
import 'repository/interceptors/auth_interceptor.dart' as _i4;
import 'repository/pets_api/pets_data_source.dart' as _i9;
import 'repository/pets_api/pets_data_source_impl.dart' as _i10;
import 'repository/pets_api/pets_repository.dart' as _i11;
import 'repository/pets_api/pets_repository_impl.dart' as _i12;
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
  gh.lazySingleton<_i7.Dio>(() => registerModule.petsDio(),
      instanceName: 'Pets');
  gh.lazySingleton<_i8.GlobalLoaderCubit>(() => _i8.GlobalLoaderCubit());
  gh.factory<_i9.PetsDataSource>(
      () => _i10.PetsDataSourceImpl(get<_i7.Dio>(instanceName: 'Pets')));
  gh.factory<_i11.PetsRepository>(
      () => _i12.PetsRepositoryImpl(get<_i9.PetsDataSource>()));
  gh.factory<String>(() => registerModule.identityBaseUrl,
      instanceName: 'IdentityBaseUrl');
  gh.factory<String>(() => registerModule.petsBaseUrl,
      instanceName: 'PetsBaseUrl');
  gh.factory<_i13.UserDataSource>(
      () => _i14.UserDataSourceImpl(get<_i7.Dio>(instanceName: 'Identity')));
  gh.factory<_i15.UserRepository>(
      () => _i16.UserRepositoryImpl(get<_i13.UserDataSource>()));
  gh.factory<_i17.AdoptPetDetailsBloc>(
      () => _i17.AdoptPetDetailsBloc(get<_i11.PetsRepository>()));
  gh.factory<_i18.AdoptPetListBloc>(
      () => _i18.AdoptPetListBloc(get<_i11.PetsRepository>()));
  gh.factory<_i19.AuthenticationDataSource>(() =>
      _i20.AuthenticationDataSourceImpl(
          get<_i7.Dio>(instanceName: 'Identity')));
  gh.factory<_i21.AuthenticationRepository>(() =>
      _i22.AuthenticationRepositoryImpl(get<_i19.AuthenticationDataSource>()));
  gh.factory<_i23.LikePetBloc>(
      () => _i23.LikePetBloc(get<_i11.PetsRepository>()));
  gh.factory<_i24.LoginBloc>(() => _i24.LoginBloc(
      get<_i21.AuthenticationRepository>(),
      get<_i5.AuthUserStore>(),
      get<_i3.AuthBroadcaster>()));
  gh.factory<_i25.RegisterBloc>(() => _i25.RegisterBloc(
      get<_i21.AuthenticationRepository>(),
      get<_i5.AuthUserStore>(),
      get<_i3.AuthBroadcaster>()));
  gh.lazySingleton<_i26.UserBloc>(() => _i26.UserBloc(
      get<_i21.AuthenticationRepository>(),
      get<_i5.AuthUserStore>(),
      get<_i3.AuthBroadcaster>(),
      get<_i15.UserRepository>()));
  return get;
}

class _$RegisterModule extends _i27.RegisterModule {}
