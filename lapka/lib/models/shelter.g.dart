// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shelter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Shelter _$_$_ShelterFromJson(Map<String, dynamic> json) {
  return _$_Shelter(
    id: json['id'] as String?,
    name: json['name'] as String?,
    address: json['address'] == null
        ? null
        : ShelterAddress.fromJson(json['address'] as Map<String, dynamic>),
    phoneNumber: json['phoneNumber'] as String?,
    email: json['email'] as String?,
  );
}

Map<String, dynamic> _$_$_ShelterToJson(_$_Shelter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
    };
