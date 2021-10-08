// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shelter_adress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShelterAddress _$$_ShelterAddressFromJson(Map<String, dynamic> json) =>
    _$_ShelterAddress(
      name: json['name'] as String?,
      city: json['city'] as String?,
      street: json['street'] as String?,
      geoLocation: json['geoLocation'] == null
          ? null
          : GeoLocation.fromJson(json['geoLocation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ShelterAddressToJson(_$_ShelterAddress instance) =>
    <String, dynamic>{
      'name': instance.name,
      'city': instance.city,
      'street': instance.street,
      'geoLocation': instance.geoLocation,
    };
