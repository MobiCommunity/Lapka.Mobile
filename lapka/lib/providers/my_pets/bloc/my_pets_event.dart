part of 'my_pets_bloc.dart';

@freezed
class MyPetsEvent with _$MyPetsEvent {
  const factory MyPetsEvent.getMyPets() = _GetMyPets;
}