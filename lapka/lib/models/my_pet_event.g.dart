// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_pet_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyPetEvent _$_$_MyPetEventFromJson(Map<String, dynamic> json) {
  return _$_MyPetEvent(
    description: json['description'] as String? ?? '',
    date: DateTime.parse(json['date'] as String),
  );
}

Map<String, dynamic> _$_$_MyPetEventToJson(_$_MyPetEvent instance) =>
    <String, dynamic>{
      'description': instance.description,
      'date': instance.date.toIso8601String(),
    };
