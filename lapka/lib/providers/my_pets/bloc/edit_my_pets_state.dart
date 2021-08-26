part of 'edit_my_pets_bloc.dart';

@freezed
class EditMyPetsState with _$EditMyPetsState {
  const factory EditMyPetsState.initial() = _Initial;
  const factory EditMyPetsState.loading() = _Loading;
  const factory EditMyPetsState.loaded(Pet pet) = _Loaded;
  const factory EditMyPetsState.error(String message) = _Error;
}
