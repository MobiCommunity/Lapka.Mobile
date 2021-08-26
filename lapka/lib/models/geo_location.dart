import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'geo_location.freezed.dart';
part 'geo_location.g.dart';

_doubleFromString(String? value) {
  if (value == null) return null;
  double.tryParse(value);
}

@freezed
abstract class GeoLocation with _$GeoLocation {
  const factory GeoLocation({
    @JsonKey(name: 'latitude', fromJson: _doubleFromString) double? latitude,
    @JsonKey(name: 'longitude', fromJson: _doubleFromString) double? longitude,
  }) = _GeoLocation;
  factory GeoLocation.fromJson(Map<String, dynamic> json) =>
      _$GeoLocationFromJson(json);
}
