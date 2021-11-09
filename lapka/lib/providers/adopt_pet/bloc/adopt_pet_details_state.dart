part of 'adopt_pet_details_bloc.dart';

@freezed
class AdoptPetDetailsState with _$AdoptPetDetailsState {
  const factory AdoptPetDetailsState({
    required DetailsState detailsState,
    required AuthState authState,
  }) = _AdoptPetDetailsState;
}

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState.initial() = _Initial;
  const factory DetailsState.loading() = _Loading;
  const factory DetailsState.loaded(Pet pet) = _Loaded;
  const factory DetailsState.error(String message) = _Error;
}
