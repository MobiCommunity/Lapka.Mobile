part of 'edit_my_pets_bloc.dart';

@freezed
class EditMyPetsEvent with _$EditMyPetsEvent {
  const factory EditMyPetsEvent.update(Pet pet) = _Update;
  const factory EditMyPetsEvent.create(Pet pet) = _Create;
  const factory EditMyPetsEvent.delete(String id) = _Delete;
  const factory EditMyPetsEvent.read(String id) = _Read;
}