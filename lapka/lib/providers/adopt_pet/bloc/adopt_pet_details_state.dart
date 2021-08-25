part of 'adopt_pet_details_bloc.dart';

@freezed
class AdoptPetDetailsState with _$AdoptPetDetailsState {
  const factory AdoptPetDetailsState.initial() = _Initial;
  const factory AdoptPetDetailsState.loading() = _Loading;
  const factory AdoptPetDetailsState.loaded(Pet pet) = _Loaded;
  const factory AdoptPetDetailsState.error(String message) = _Error;
}
