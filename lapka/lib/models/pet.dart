enum Sex{male, famale}
enum Species{dog, cat, rabbit, parrot}
class Pet{
  String? name, race, description, color;
  Sex? sex;
  DateTime? birthDate;
  bool? sterilization;
  Species? species;

  Pet({this.name, this.race, this.description, this.birthDate, this.color, this.sex, this.species, this.sterilization});

}