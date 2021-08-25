part of 'my_pets_bloc.dart';

@freezed
class MyPetsState with _$MyPetsState {
  const factory MyPetsState.initial() = _Initial;
  const factory MyPetsState.loading() = _Loading;
  const factory MyPetsState.loaded(List<Pet> pets) = _Loaded;
  const factory MyPetsState.error(String errorMsg) = _Error;
}
