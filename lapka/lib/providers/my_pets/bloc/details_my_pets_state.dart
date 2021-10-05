part of 'details_my_pets_bloc.dart';

@freezed
class DetailsMyPetsState with _$DetailsMyPetsState {
  const factory DetailsMyPetsState.initial() = _Initial;
  const factory DetailsMyPetsState.loading() = _Loading;
  const factory DetailsMyPetsState.loaded(Pet pet) = _Loaded;
  const factory DetailsMyPetsState.error() = _Error;
}
