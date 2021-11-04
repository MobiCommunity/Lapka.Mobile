part of 'adopt_pet_list_bloc.dart';

@freezed
class AdoptPetListEvent with _$AdoptPetListEvent {
  const factory AdoptPetListEvent.getAllPets() = _GetAllPets;
  const factory AdoptPetListEvent.getFilteredPets(String phrase) =
      _GetFilteredPets;
}
