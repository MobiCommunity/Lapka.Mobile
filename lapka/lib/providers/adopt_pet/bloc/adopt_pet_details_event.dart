part of 'adopt_pet_details_bloc.dart';

@freezed
class AdoptPetDetailsEvent with _$AdoptPetDetailsEvent {
  const factory AdoptPetDetailsEvent.getDetails(String id) = _GetDetails;
  const factory AdoptPetDetailsEvent.like(String id) = _Like;
  const factory AdoptPetDetailsEvent.dislike(String id) = _Dislike;
}
