// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i7;
import 'package:fresh_dio/fresh_dio.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'domain/auth/use_case/logout_use_case.dart' as _i29;
import 'domain/auth/use_case/refresh_token_use_case.dart' as _i16;
import 'domain/user/use_case/fetch_user_data_use_case.dart' as _i26;
import 'injector.dart' as _i33;
import 'providers/adopt_pet/bloc/adopt_pet_details_bloc.dart' as _i24;
import 'providers/adopt_pet/bloc/adopt_pet_list_bloc.dart' as _i25;
import 'providers/adopt_pet/bloc/like_pet_bloc.dart' as _i27;
import 'providers/global_loader/global_loader_cubit.dart' as _i11;
import 'providers/login/bloc/login_bloc.dart' as _i28;
import 'providers/menu/bloc/menu_bloc.dart' as _i30;
import 'providers/register/register_bloc.dart' as _i17;
import 'repository/identity_api/authentication/authentication_data_source.dart'
    as _i5;
import 'repository/identity_api/authentication/authentication_data_source_impl.dart'
    as _i6;
import 'repository/identity_api/authentication/authentication_repository.dart'
    as _i8;
import 'repository/identity_api/authentication/authentication_repository_impl.dart'
    as _i9;
import 'repository/identity_api/user/user_data_source.dart' as _i18;
import 'repository/identity_api/user/user_data_source_impl.dart' as _i19;
import 'repository/identity_api/user/user_repository.dart' as _i20;
import 'repository/identity_api/user/user_repository_impl.dart' as _i21;
import 'repository/interceptors/auth_interceptor.dart' as _i4;
import 'repository/pets_api/pets_data_source.dart' as _i12;
import 'repository/pets_api/pets_data_source_impl.dart' as _i13;
import 'repository/pets_api/pets_repository.dart' as _i14;
import 'repository/pets_api/pets_repository_impl.dart' as _i15;
import 'services/auth_service.dart' as _i31;
import 'services/auth_service_impl.dart' as _i32;
import 'services/user_service.dart' as _i22;
import 'services/user_service_impl.dart' as _i23;
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
  gh.factory<_i5.AuthenticationDataSource>(() =>
      _i6.AuthenticationDataSourceImpl(get<_i7.Dio>(instanceName: 'Identity')));
  gh.factory<_i8.AuthenticationRepository>(() =>
      _i9.AuthenticationRepositoryImpl(get<_i5.AuthenticationDataSource>()));
  gh.lazySingleton<_i10.Dio>(() => registerModule.identityDio(),
      instanceName: 'Identity');
  gh.lazySingleton<_i10.Dio>(() => registerModule.petsDio(),
      instanceName: 'Pets');
  gh.lazySingleton<_i11.GlobalLoaderCubit>(() => _i11.GlobalLoaderCubit());
  gh.factory<_i12.PetsDataSource>(
      () => _i13.PetsDataSourceImpl(get<_i7.Dio>(instanceName: 'Pets')));
  gh.factory<_i14.PetsRepository>(
      () => _i15.PetsRepositoryImpl(get<_i12.PetsDataSource>()));
  gh.factory<_i16.RefreshTokenUseCase>(
      () => _i16.RefreshTokenUseCase(get<_i8.AuthenticationRepository>()));
  gh.factory<_i17.RegisterBloc>(
      () => _i17.RegisterBloc(get<_i8.AuthenticationRepository>()));
  gh.factory<String>(() => registerModule.identityBaseUrl,
      instanceName: 'IdentityBaseUrl');
  gh.factory<String>(() => registerModule.petsBaseUrl,
      instanceName: 'PetsBaseUrl');
  gh.factory<_i18.UserDataSource>(
      () => _i19.UserDataSourceImpl(get<_i7.Dio>(instanceName: 'Identity')));
  gh.factory<_i20.UserRepository>(
      () => _i21.UserRepositoryImpl(get<_i18.UserDataSource>()));
  gh.lazySingleton<_i22.UserService>(() => _i23.UserServiceImpl());
  gh.factory<_i24.AdoptPetDetailsBloc>(
      () => _i24.AdoptPetDetailsBloc(get<_i14.PetsRepository>()));
  gh.factory<_i25.AdoptPetListBloc>(
      () => _i25.AdoptPetListBloc(get<_i14.PetsRepository>()));
  gh.factory<_i26.FetchUserDataUseCase>(() => _i26.FetchUserDataUseCase(
      get<_i20.UserRepository>(), get<_i22.UserService>()));
  gh.factory<_i27.LikePetBloc>(
      () => _i27.LikePetBloc(get<_i14.PetsRepository>()));
  gh.factory<_i28.LoginBloc>(() => _i28.LoginBloc(
      get<_i8.AuthenticationRepository>(),
      get<_i22.UserService>(),
      get<_i3.AuthBroadcaster>()));
  gh.factory<_i29.LogoutUseCase>(() => _i29.LogoutUseCase(
      get<_i8.AuthenticationRepository>(), get<_i22.UserService>()));
  gh.factory<_i30.MenuBloc>(() => _i30.MenuBloc(get<_i22.UserService>(),
      get<_i3.AuthBroadcaster>(), get<_i26.FetchUserDataUseCase>()));
  gh.lazySingleton<_i31.AuthService>(() => _i32.AuthServiceImpl(
      get<_i22.UserService>(),
      get<_i3.AuthBroadcaster>(),
      get<_i16.RefreshTokenUseCase>(),
      get<_i26.FetchUserDataUseCase>()));
  return get;
}

class _$RegisterModule extends _i33.RegisterModule {}
