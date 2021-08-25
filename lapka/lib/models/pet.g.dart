// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pet _$_$_PetFromJson(Map<String, dynamic> json) {
  return _$_Pet(
    id: json['id'] as String?,
    name: json['name'] as String?,
    sex: _boolFromInt(json['sex'] as int?),
    race: json['race'] as String?,
    species: json['species'] as int?,
    mainPhotoPath: json['mainPhotoPath'] as String?,
    birthDay: json['birthDay'] == null
        ? null
        : DateTime.parse(json['birthDay'] as String),
    color: json['color'] as String?,
    weight: (json['weight'] as num?)?.toDouble(),
    sterilization: json['sterilization'] as bool?,
    shelterAddress: json['shelterAddress'] == null
        ? null
        : ShelterAddress.fromJson(
            json['shelterAddress'] as Map<String, dynamic>),
    description: json['description'] as String?,
  );
}

Map<String, dynamic> _$_$_PetToJson(_$_Pet instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sex': instance.sex,
      'race': instance.race,
      'species': instance.species,
      'mainPhotoPath': instance.mainPhotoPath,
      'birthDay': instance.birthDay?.toIso8601String(),
      'color': instance.color,
      'weight': instance.weight,
      'sterilization': instance.sterilization,
      'shelterAddress': instance.shelterAddress,
      'description': instance.description,
    };
