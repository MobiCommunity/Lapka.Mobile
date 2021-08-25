part of 'shelter_details_bloc.dart';

@freezed
class ShelterDetailsState with _$ShelterDetailsState {
  const factory ShelterDetailsState.initial() = _Initial;
  const factory ShelterDetailsState.loading() = _Loading;
  const factory ShelterDetailsState.loaded(Shelter shelters) = _Loaded;
  const factory ShelterDetailsState.error(String message) = _Error;
}
