enum Species {
  All,
  Dogs,
  Cats,
  Rabbits,
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
