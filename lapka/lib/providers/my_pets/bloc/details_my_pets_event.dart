part of 'details_my_pets_bloc.dart';

@freezed
class DetailsMyPetsEvent with _$DetailsMyPetsEvent {
  const factory DetailsMyPetsEvent.getDetails(String id) = _GetDetails;
  const factory DetailsMyPetsEvent.addVisit(dynamic object) = _AddVisit;
  const factory DetailsMyPetsEvent.editVisit(dynamic object) = _EditVisit;
  const factory DetailsMyPetsEvent.addVisitInformation(dynamic object) = _AddVisitInformation;
}