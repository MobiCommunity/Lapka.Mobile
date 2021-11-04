import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'species.g.dart';

@JsonEnum(alwaysCreate: true)
enum Species {
  @JsonValue('All')
  All,
  @JsonValue('Dogs')
  Dogs,
  @JsonValue('Cats')
  Cats,
  @JsonValue('Rabbits')
  Rabbits,
  @JsonValue('Parrots')
  Parrots,
}

Map<Species, String> speciesMap = {
  Species.All: 'Wszystkie',
  Species.Dogs: 'Psy',
  Species.Cats: 'Koty',
  Species.Rabbits: 'Króliki',
  Species.Parrots: 'Papugi'
};
String getStringFromSpecies(Species species) {
  return speciesMap[species]!;
}

List<String> getSpeciesList() {
  List<String> list = [];
  Species.values.forEach((element) {
    list.add(getStringFromSpecies(element));
  });
  return list;
}

extension SpecieJSONValue on Species {
  String get value => _$SpeciesEnumMap[this]!;
}
