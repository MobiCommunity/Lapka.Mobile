// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'domain/auth/use_cases/facebook_login_use_case.dart' as _i26;
import 'domain/auth/use_cases/google_login_use_case.dart' as _i30;
import 'domain/auth/use_cases/logout_use_case.dart' as _i34;
import 'domain/auth/use_cases/refresh_token_use_case.dart' as _i36;
import 'domain/pet/use_cases/get_liked_pet_list_use_case.dart' as _i28;
import 'domain/pet/use_cases/get_pets_list_use_case.dart' as _i29;
import 'domain/user/use_cases/fetch_user_data_use_case.dart' as _i27;
import 'injector.dart' as _i41;
import 'providers/adopt_pet/bloc/adopt_pet_details_bloc.dart' as _i21;
import 'providers/adopt_pet/bloc/adopt_pet_list_bloc.dart' as _i38;
import 'providers/adopt_pet/bloc/like_pet_bloc.dart' as _i31;
import 'providers/global_loader/global_loader_cubit.dart' as _i8;
import 'providers/liked_pets/bloc/bloc/liked_pets_bloc.dart' as _i32;
import 'providers/login/bloc/login_bloc.dart' as _i33;
import 'providers/menu/bloc/menu_bloc.dart' as _i35;
import 'providers/register/register_bloc.dart' as _i37;
import 'repository/identity_api/authentication/authentication_data_source.dart'
    as _i22;
import 'repository/identity_api/authentication/authentication_data_source_impl.dart'
    as _i23;
import 'repository/identity_api/authentication/authentication_repository.dart'
    as _i24;
import 'repository/identity_api/authentication/authentication_repository_impl.dart'
    as _i25;
import 'repository/identity_api/user/user_data_source.dart' as _i15;
import 'repository/identity_api/user/user_data_source_impl.dart' as _i16;
import 'repository/identity_api/user/user_repository.dart' as _i17;
import 'repository/identity_api/user/user_repository_impl.dart' as _i18;
import 'repository/interceptors/auth_interceptor.dart' as _i4;
import 'repository/pets_api/pets_data_source.dart' as _i11;
import 'repository/pets_api/pets_data_source_impl.dart' as _i12;
import 'repository/pets_api/pets_repository.dart' as _i13;
import 'repository/pets_api/pets_repository_impl.dart' as _i14;
import 'services/auth_service.dart' as _i39;
import 'services/auth_service_impl.dart' as _i40;
import 'services/facebook_auth_service.dart' as _i6;
import 'services/facebook_auth_service_impl.dart' as _i7;
import 'services/google_sign_in_service.dart' as _i9;
import 'services/google_sign_in_service_impl.dart' as _i10;
import 'services/user_service.dart' as _i19;
import 'services/user_service_impl.dart' as _i20;
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
  gh.lazySingleton<_i5.Dio>(() => registerModule.petsDio(),
      instanceName: 'Pets');
  gh.lazySingleton<_i6.FacebookAuthService>(
      () => _i7.FacebookAuthServiceImpl());
  gh.lazySingleton<_i8.GlobalLoaderCubit>(() => _i8.GlobalLoaderCubit());
  gh.lazySingleton<_i9.GoogleSignInService>(
      () => _i10.GoogleSignInServiceImpl());
  gh.factory<_i11.PetsDataSource>(
      () => _i12.PetsDataSourceImpl(get<_i5.Dio>(instanceName: 'Pets')));
  gh.factory<_i13.PetsRepository>(
      () => _i14.PetsRepositoryImpl(get<_i11.PetsDataSource>()));
  gh.factory<String>(() => registerModule.identityBaseUrl,
      instanceName: 'IdentityBaseUrl');
  gh.factory<String>(() => registerModule.petsBaseUrl,
      instanceName: 'PetsBaseUrl');
  gh.factory<_i15.UserDataSource>(
      () => _i16.UserDataSourceImpl(get<_i5.Dio>(instanceName: 'Identity')));
  gh.factory<_i17.UserRepository>(
      () => _i18.UserRepositoryImpl(get<_i15.UserDataSource>()));
  gh.lazySingleton<_i19.UserService>(() => _i20.UserServiceImpl());
  gh.factory<_i21.AdoptPetDetailsBloc>(
      () => _i21.AdoptPetDetailsBloc(get<_i13.PetsRepository>()));
  gh.factory<_i22.AuthenticationDataSource>(() =>
      _i23.AuthenticationDataSourceImpl(
          get<_i5.Dio>(instanceName: 'Identity')));
  gh.factory<_i24.AuthenticationRepository>(() =>
      _i25.AuthenticationRepositoryImpl(get<_i22.AuthenticationDataSource>(),
          get<_i6.FacebookAuthService>(), get<_i9.GoogleSignInService>()));
  gh.factory<_i26.FacebookLoginUseCase>(
      () => _i26.FacebookLoginUseCase(get<_i24.AuthenticationRepository>()));
  gh.factory<_i27.FetchUserDataUseCase>(() => _i27.FetchUserDataUseCase(
      get<_i17.UserRepository>(), get<_i19.UserService>()));
  gh.factory<_i28.GetLikedPetListUseCase>(
      () => _i28.GetLikedPetListUseCase(get<_i13.PetsRepository>()));
  gh.factory<_i29.GetPetsListUseCase>(
      () => _i29.GetPetsListUseCase(get<_i13.PetsRepository>()));
  gh.factory<_i30.GoogleLoginUseCase>(
      () => _i30.GoogleLoginUseCase(get<_i24.AuthenticationRepository>()));
  gh.factory<_i31.LikePetBloc>(
      () => _i31.LikePetBloc(get<_i13.PetsRepository>()));
  gh.factory<_i32.LikedPetsBloc>(
      () => _i32.LikedPetsBloc(get<_i28.GetLikedPetListUseCase>()));
  gh.factory<_i33.LoginBloc>(() => _i33.LoginBloc(
      get<_i24.AuthenticationRepository>(),
      get<_i19.UserService>(),
      get<_i3.AuthBroadcaster>(),
      get<_i26.FacebookLoginUseCase>(),
      get<_i30.GoogleLoginUseCase>()));
  gh.factory<_i34.LogoutUseCase>(() => _i34.LogoutUseCase(
      get<_i24.AuthenticationRepository>(),
      get<_i19.UserService>(),
      get<_i3.AuthBroadcaster>()));
  gh.factory<_i35.MenuBloc>(() => _i35.MenuBloc(get<_i19.UserService>(),
      get<_i3.AuthBroadcaster>(), get<_i27.FetchUserDataUseCase>()));
  gh.factory<_i36.RefreshTokenUseCase>(
      () => _i36.RefreshTokenUseCase(get<_i24.AuthenticationRepository>()));
  gh.factory<_i37.RegisterBloc>(
      () => _i37.RegisterBloc(get<_i24.AuthenticationRepository>()));
  gh.factory<_i38.AdoptPetListBloc>(
      () => _i38.AdoptPetListBloc(get<_i29.GetPetsListUseCase>()));
  gh.lazySingleton<_i39.AuthService>(() => _i40.AuthServiceImpl(
      get<_i19.UserService>(),
      get<_i3.AuthBroadcaster>(),
      get<_i36.RefreshTokenUseCase>()));
  return get;
}

class _$RegisterModule extends _i41.RegisterModule {}
