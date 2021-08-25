part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.determinePosition() = _DeterminePosition;
  const factory LocationEvent.getPosition() = _GetPosition;

}