import 'package:lapka/models/pet.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/result.dart';
import 'package:lapka/utils/species.dart';

abstract class PetsRepository {
  Future<Result<List<Pet>, NetworkExceptions>> getPets(
      String? petName, Species? race, String? lat, String? lng);

  Future<Result<Pet, NetworkExceptions>> getPetDetails(String id);

  Future<Result<void, NetworkExceptions>> likePet(String id);

  Future<Result<void, NetworkExceptions>> dislikePet(String id);

  Future<Result<List<Pet>, NetworkExceptions>> getAllLikedPets(
      String? petName, Species? race, String? lat, String? lng);
}
