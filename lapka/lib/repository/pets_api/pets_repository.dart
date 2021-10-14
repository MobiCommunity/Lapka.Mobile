import 'package:lapka/models/pet.dart';
import 'package:lapka/repository/api_result.dart';

abstract class PetsRepository {
  Future<ApiResult<List<Pet>>> getAllPets();

  Future<ApiResult<Pet>> getPetDetails(String id);

  Future<ApiResult<void>> likePet(String id);

  Future<ApiResult<void>> dislikePet(String id);

  Future<ApiResult<List<Pet>>> getAllLikedPets();
}
