// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i7;
import 'package:fresh_dio/fresh_dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'domain/auth/use_cases/facebook_login_use_case.dart' as _i27;
import 'domain/auth/use_cases/google_login_use_case.dart' as _i30;
import 'domain/auth/use_cases/logout_use_case.dart' as _i33;
import 'domain/auth/use_cases/refresh_token_use_case.dart' as _i35;
import 'domain/pet/use_cases/get_pets_list_use_case.dart' as _i29;
import 'domain/user/use_cases/fetch_user_data_use_case.dart' as _i28;
import 'injector.dart' as _i40;
import 'providers/adopt_pet/bloc/adopt_pet_details_bloc.dart' as _i24;
import 'providers/adopt_pet/bloc/adopt_pet_list_bloc.dart' as _i37;
import 'providers/adopt_pet/bloc/like_pet_bloc.dart' as _i31;
import 'providers/global_loader/global_loader_cubit.dart' as _i11;
import 'providers/login/bloc/login_bloc.dart' as _i32;
import 'providers/menu/bloc/menu_bloc.dart' as _i34;
import 'providers/register/register_bloc.dart' as _i36;
import 'repository/identity_api/authentication/authentication_data_source.dart'
    as _i5;
import 'repository/identity_api/authentication/authentication_data_source_impl.dart'
    as _i6;
import 'repository/identity_api/authentication/authentication_repository.dart'
    as _i25;
import 'repository/identity_api/authentication/authentication_repository_impl.dart'
    as _i26;
import 'repository/identity_api/user/user_data_source.dart' as _i18;
import 'repository/identity_api/user/user_data_source_impl.dart' as _i19;
import 'repository/identity_api/user/user_repository.dart' as _i20;
import 'repository/identity_api/user/user_repository_impl.dart' as _i21;
import 'repository/interceptors/auth_interceptor.dart' as _i4;
import 'repository/pets_api/pets_data_source.dart' as _i14;
import 'repository/pets_api/pets_data_source_impl.dart' as _i15;
import 'repository/pets_api/pets_repository.dart' as _i16;
import 'repository/pets_api/pets_repository_impl.dart' as _i17;
import 'services/auth_service.dart' as _i38;
import 'services/auth_service_impl.dart' as _i39;
import 'services/facebook_auth_service.dart' as _i9;
import 'services/facebook_auth_service_impl.dart' as _i10;
import 'services/google_sign_in_service.dart' as _i12;
import 'services/google_sign_in_service_impl.dart' as _i13;
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
  gh.lazySingleton<_i8.Dio>(() => registerModule.identityDio(),
      instanceName: 'Identity');
  gh.lazySingleton<_i8.Dio>(() => registerModule.petsDio(),
      instanceName: 'Pets');
  gh.lazySingleton<_i9.FacebookAuthService>(
      () => _i10.FacebookAuthServiceImpl());
  gh.lazySingleton<_i11.GlobalLoaderCubit>(() => _i11.GlobalLoaderCubit());
  gh.lazySingleton<_i12.GoogleSignInService>(
      () => _i13.GoogleSignInServiceImpl());
  gh.factory<_i14.PetsDataSource>(
      () => _i15.PetsDataSourceImpl(get<_i7.Dio>(instanceName: 'Pets')));
  gh.factory<_i16.PetsRepository>(
      () => _i17.PetsRepositoryImpl(get<_i14.PetsDataSource>()));
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
      () => _i24.AdoptPetDetailsBloc(get<_i16.PetsRepository>()));
  gh.factory<_i25.AuthenticationRepository>(() =>
      _i26.AuthenticationRepositoryImpl(get<_i5.AuthenticationDataSource>(),
          get<_i9.FacebookAuthService>(), get<_i12.GoogleSignInService>()));
  gh.factory<_i27.FacebookLoginUseCase>(
      () => _i27.FacebookLoginUseCase(get<_i25.AuthenticationRepository>()));
  gh.factory<_i28.FetchUserDataUseCase>(() => _i28.FetchUserDataUseCase(
      get<_i20.UserRepository>(), get<_i22.UserService>()));
  gh.factory<_i29.GetPetsListUseCase>(
      () => _i29.GetPetsListUseCase(get<_i16.PetsRepository>()));
  gh.factory<_i30.GoogleLoginUseCase>(
      () => _i30.GoogleLoginUseCase(get<_i25.AuthenticationRepository>()));
  gh.factory<_i31.LikePetBloc>(
      () => _i31.LikePetBloc(get<_i16.PetsRepository>()));
  gh.factory<_i32.LoginBloc>(() => _i32.LoginBloc(
      get<_i25.AuthenticationRepository>(),
      get<_i22.UserService>(),
      get<_i3.AuthBroadcaster>(),
      get<_i27.FacebookLoginUseCase>(),
      get<_i30.GoogleLoginUseCase>()));
  gh.factory<_i33.LogoutUseCase>(() => _i33.LogoutUseCase(
      get<_i25.AuthenticationRepository>(),
      get<_i22.UserService>(),
      get<_i3.AuthBroadcaster>()));
  gh.factory<_i34.MenuBloc>(() => _i34.MenuBloc(get<_i22.UserService>(),
      get<_i3.AuthBroadcaster>(), get<_i28.FetchUserDataUseCase>()));
  gh.factory<_i35.RefreshTokenUseCase>(
      () => _i35.RefreshTokenUseCase(get<_i25.AuthenticationRepository>()));
  gh.factory<_i36.RegisterBloc>(
      () => _i36.RegisterBloc(get<_i25.AuthenticationRepository>()));
  gh.factory<_i37.AdoptPetListBloc>(
      () => _i37.AdoptPetListBloc(get<_i29.GetPetsListUseCase>()));
  gh.lazySingleton<_i38.AuthService>(() => _i39.AuthServiceImpl(
      get<_i22.UserService>(),
      get<_i3.AuthBroadcaster>(),
      get<_i35.RefreshTokenUseCase>()));
  return get;
}

class _$RegisterModule extends _i40.RegisterModule {}
