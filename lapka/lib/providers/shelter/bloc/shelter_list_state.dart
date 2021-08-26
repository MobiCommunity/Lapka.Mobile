part of 'shelter_list_bloc.dart';

@freezed
class ShelterListState with _$ShelterListState {
  const factory ShelterListState.initial() = _Initial;
  const factory ShelterListState.loading() = _Loading;
  const factory ShelterListState.loaded(List<Shelter> shelters) = _Loaded;
  const factory ShelterListState.error(String message) = _Error;
}
