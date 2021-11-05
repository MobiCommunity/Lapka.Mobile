import 'package:lapka/models/pet.dart';

abstract class PetsDataSource {
  Future<List<Pet>> getPets(
      String? petName, String? race, String? lat, String? lng);

  Future<Pet> getPetDetails(String id);

  Future<void> likePet(String id);

  Future<void> dislikePet(String id);

  Future<List<Pet>> getAllLikedPets(
      String? petName, String? race, String? lat, String? lng);
}
