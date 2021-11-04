part of 'adopt_pet_list_bloc.dart';

@freezed
class AdoptPetListEvent with _$AdoptPetListEvent {
  const factory AdoptPetListEvent.getPets({PetFilters? filters}) = _GetPets;
  const factory AdoptPetListEvent.updateFilters(PetFilters filters) = _UpdateFilters;
}