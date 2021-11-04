import 'package:lapka/models/geo_location.dart';
import 'package:lapka/models/shelter_adress.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pet.freezed.dart';
part 'pet.g.dart';

bool? _boolFromInt(int? value) {
  if (value == null) return null;
  return value == 0 ? false : true;
}

@freezed
abstract class Pet with _$Pet {
  const factory Pet(
      {String? id,
      String? name,
      @JsonKey(
        name: 'sex',
        fromJson: _boolFromInt,
      )
          bool? sex,
      String? race,
      int? species,
      String? mainPhotoPath,
      DateTime? birthDay,
      String? color,
      double? weight,
      bool? sterilization,
      ShelterAddress? shelterAddress,
      String? description}) = _Pet;

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);

  // Pet.fromJson(Map<String, dynamic> json) {
  //   id = json['id'];
  //   name = json['name'];
  //   sex = json['sex'] == 0 ? false : true;
  //   race = json['race'];
  //   species = json['species'];
  //   mainPhotoPath = json['mainPhotoPath'];
  //   birthDay = DateTime.tryParse(json['birthDay']);
  //   color = json['color'];
  //   description = json['description'];
  //   weight = double.tryParse(json['weight'].toString());
  //   sterilization = json['sterilization'];
  //       shelterAddress = json['shelterAddress'] != null
  //       ? new ShelterAddress.fromJson(json['shelterAddress'])
  //       : null;
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['id'] = this.id;
  //   data['name'] = this.name;
  //   data['sex'] = this.sex;
  //   data['race'] = this.race;
  //   data['species'] = this.species;
  //   data['mainPhotoPath'] = this.mainPhotoPath;
  //   data['birthDay'] = this.birthDay;
  //   data['color'] = this.color;
  //   data['weight'] = this.weight;
  //   data['description'] = this.description;
  //   data['sterilization'] = this.sterilization;
  //       if (this.shelterAddress != null) {
  //     data['shelterAddress'] = this.shelterAddress!.toJson();
  //   }
  //   return data;
  // }
}
