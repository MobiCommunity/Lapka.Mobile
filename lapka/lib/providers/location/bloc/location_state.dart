part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.initial() = _Initial;
  const factory LocationState.loading() = _Loading;
  const factory LocationState.determined(LocationRepository repo) = _Determined;
  const factory LocationState.noPermission() = _NoPermission;
  const factory LocationState.error(String message) = _Error;
}
