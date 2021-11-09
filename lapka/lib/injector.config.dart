// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i7;
import 'package:fresh_dio/fresh_dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'domain/auth/use_cases/facebook_login_use_case.dart' as _i27;
import 'domain/auth/use_cases/google_login_use_case.dart' as _i31;
import 'domain/auth/use_cases/logout_use_case.dart' as _i35;
import 'domain/auth/use_cases/refresh_token_use_case.dart' as _i37;
import 'domain/pet/use_cases/dislike_pet_use_case.dart' as _i26;
import 'domain/pet/use_cases/get_liked_pet_list_use_case.dart' as _i29;
import 'domain/pet/use_cases/get_pets_list_use_case.dart' as _i30;
import 'domain/pet/use_cases/like_pet_use_case.dart' as _i32;
import 'domain/user/use_cases/fetch_user_data_use_case.dart' as _i28;
import 'injector.dart' as _i43;
import 'providers/adopt_pet/bloc/adopt_pet_details_bloc.dart' as _i39;
import 'providers/adopt_pet/bloc/adopt_pet_list_bloc.dart' as _i40;
import 'providers/global_loader/global_loader_cubit.dart' as _i11;
import 'providers/liked_pets/bloc/liked_pets_bloc.dart' as _i33;
import 'providers/login/bloc/login_bloc.dart' as _i34;
import 'providers/menu/bloc/menu_bloc.dart' as _i36;
import 'providers/register/register_bloc.dart' as _i38;
import 'repository/identity_api/authentication/authentication_data_source.dart'
    as _i5;
import 'repository/identity_api/authentication/authentication_data_source_impl.dart'
    as _i6;
import 'repository/identity_api/authentication/authentication_repository.dart'
    as _i24;
import 'repository/identity_api/authentication/authentication_repository_impl.dart'
    as _i25;
import 'repository/identity_api/user/user_data_source.dart' as _i18;
import 'repository/identity_api/user/user_data_source_impl.dart' as _i19;
import 'repository/identity_api/user/user_repository.dart' as _i20;
import 'repository/identity_api/user/user_repository_impl.dart' as _i21;
import 'repository/interceptors/auth_interceptor.dart' as _i4;
import 'repository/pets_api/pets_data_source.dart' as _i14;
import 'repository/pets_api/pets_data_source_impl.dart' as _i15;
import 'repository/pets_api/pets_repository.dart' as _i16;
import 'repository/pets_api/pets_repository_impl.dart' as _i17;
import 'services/auth_service.dart' as _i41;
import 'services/auth_service_impl.dart' as _i42;
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
  gh.factory<_i24.AuthenticationRepository>(() =>
      _i25.AuthenticationRepositoryImpl(get<_i5.AuthenticationDataSource>(),
          get<_i9.FacebookAuthService>(), get<_i12.GoogleSignInService>()));
  gh.factory<_i26.DislikePetUseCase>(
      () => _i26.DislikePetUseCase(get<_i16.PetsRepository>()));
  gh.factory<_i27.FacebookLoginUseCase>(
      () => _i27.FacebookLoginUseCase(get<_i24.AuthenticationRepository>()));
  gh.factory<_i28.FetchUserDataUseCase>(() => _i28.FetchUserDataUseCase(
      get<_i20.UserRepository>(), get<_i22.UserService>()));
  gh.factory<_i29.GetLikedPetListUseCase>(
      () => _i29.GetLikedPetListUseCase(get<_i16.PetsRepository>()));
  gh.factory<_i30.GetPetsListUseCase>(
      () => _i30.GetPetsListUseCase(get<_i16.PetsRepository>()));
  gh.factory<_i31.GoogleLoginUseCase>(
      () => _i31.GoogleLoginUseCase(get<_i24.AuthenticationRepository>()));
  gh.factory<_i32.LikePetUseCase>(
      () => _i32.LikePetUseCase(get<_i16.PetsRepository>()));
  gh.factory<_i33.LikedPetsBloc>(() => _i33.LikedPetsBloc(
      get<_i29.GetLikedPetListUseCase>(),
      get<_i32.LikePetUseCase>(),
      get<_i26.DislikePetUseCase>(),
      get<_i3.AuthBroadcaster>()));
  gh.factory<_i34.LoginBloc>(() => _i34.LoginBloc(
      get<_i24.AuthenticationRepository>(),
      get<_i22.UserService>(),
      get<_i3.AuthBroadcaster>(),
      get<_i27.FacebookLoginUseCase>(),
      get<_i31.GoogleLoginUseCase>()));
  gh.factory<_i35.LogoutUseCase>(() => _i35.LogoutUseCase(
      get<_i24.AuthenticationRepository>(),
      get<_i22.UserService>(),
      get<_i3.AuthBroadcaster>()));
  gh.factory<_i36.MenuBloc>(() => _i36.MenuBloc(get<_i22.UserService>(),
      get<_i3.AuthBroadcaster>(), get<_i28.FetchUserDataUseCase>()));
  gh.factory<_i37.RefreshTokenUseCase>(
      () => _i37.RefreshTokenUseCase(get<_i24.AuthenticationRepository>()));
  gh.factory<_i38.RegisterBloc>(
      () => _i38.RegisterBloc(get<_i24.AuthenticationRepository>()));
  gh.factory<_i39.AdoptPetDetailsBloc>(() => _i39.AdoptPetDetailsBloc(
      get<_i16.PetsRepository>(),
      get<_i32.LikePetUseCase>(),
      get<_i26.DislikePetUseCase>(),
      get<_i3.AuthBroadcaster>()));
  gh.factory<_i40.AdoptPetListBloc>(() => _i40.AdoptPetListBloc(
      get<_i30.GetPetsListUseCase>(),
      get<_i32.LikePetUseCase>(),
      get<_i26.DislikePetUseCase>(),
      get<_i3.AuthBroadcaster>()));
  gh.lazySingleton<_i41.AuthService>(() => _i42.AuthServiceImpl(
      get<_i22.UserService>(),
      get<_i3.AuthBroadcaster>(),
      get<_i37.RefreshTokenUseCase>()));
  return get;
}

class _$RegisterModule extends _i43.RegisterModule {}
