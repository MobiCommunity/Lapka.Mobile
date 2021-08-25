// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeoLocation _$_$_GeoLocationFromJson(Map<String, dynamic> json) {
  return _$_GeoLocation(
    latitude: _doubleFromString(json['latitude'] as String?),
    longitude: _doubleFromString(json['longitude'] as String?),
  );
}

Map<String, dynamic> _$_$_GeoLocationToJson(_$_GeoLocation instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
