import 'package:lapka/models/pet.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/result.dart';

abstract class PetsRepository {
  Future<Result<List<Pet>, NetworkExceptions>> getAllPets();

  Future<Result<Pet, NetworkExceptions>> getPetDetails(String id);

  Future<Result<void, NetworkExceptions>> likePet(String id);

  Future<Result<void, NetworkExceptions>> dislikePet(String id);

  Future<Result<List<Pet>, NetworkExceptions>> getAllLikedPets();
}
