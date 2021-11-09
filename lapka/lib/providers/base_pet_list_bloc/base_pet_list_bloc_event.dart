part of 'base_pet_list_bloc.dart';

@freezed
class BasePetListBlocEvent with _$BasePetListBlocEvent {
  const factory BasePetListBlocEvent.getPets({PetFilters? filters}) = GetPets;
  const factory BasePetListBlocEvent.updateFilters(PetFilters filters) = UpdateFilters;
  const factory BasePetListBlocEvent.likePet(String petId) = LikePet;
  const factory BasePetListBlocEvent.dislikePet(String petId) = DislikePet;
}