part of 'adopt_pet_list_bloc.dart';

@freezed
class AdoptPetListState with _$AdoptPetListState {
  const factory AdoptPetListState.initial() = _Initial;
  const factory AdoptPetListState.loading() = _Loading;
  const factory AdoptPetListState.loaded(List<Pet> pets) = _Loaded;
  const factory AdoptPetListState.error(String errorMsg) = _Error;
}
