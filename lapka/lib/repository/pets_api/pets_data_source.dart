import 'package:lapka/models/pet.dart';

abstract class PetsDataSource {
  Future<List<Pet>> getAllPets();

  Future<Pet> getPetDetails(String id);

  Future<void> likePet(String id);

  Future<void> dislikePet(String id);

  Future<List<Pet>> getAllLikedPets();
}
