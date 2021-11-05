part of 'base_pet_list_bloc.dart';

@freezed
class BasePetListBlocState with _$BasePetListBlocState {
  const factory BasePetListBlocState({
    required ListState listState,
    required PetFilters filters,
  }) = _BasePetListBlocState;
}

@freezed
class ListState with _$ListState {
  const factory ListState.initial() = _Initial;
  const factory ListState.loading() = _Loading;
  const factory ListState.loaded(List<Pet> pets) = _Loaded;
  const factory ListState.error(String errorMsg) = _Error;
}
