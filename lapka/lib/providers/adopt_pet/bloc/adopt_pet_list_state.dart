part of 'adopt_pet_list_bloc.dart';

@freezed
class AdoptPetListState with _$AdoptPetListState {
  const factory AdoptPetListState({
    required ListState listState,
    required PetFilters filters,
  }) = _AdoptPetListState;
}

@freezed
class ListState with _$ListState {
  const factory ListState.initial() = _Initial;
  const factory ListState.loading() = _Loading;
  const factory ListState.loaded(List<Pet> pets) = _Loaded;
  const factory ListState.error(String errorMsg) = _Error;
}
