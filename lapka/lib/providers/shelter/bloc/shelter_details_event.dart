part of 'shelter_details_bloc.dart';

@freezed
class ShelterDetailsEvent with _$ShelterDetailsEvent {
  const factory ShelterDetailsEvent.getDetails(String id) = _GetDetails;
}
