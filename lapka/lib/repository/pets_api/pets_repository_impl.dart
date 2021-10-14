import 'package:injectable/injectable.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/repository/api_result.dart';
import 'package:lapka/repository/identity_api/user/user_repository.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/pets_api/pets_data_source.dart';
import 'package:lapka/repository/pets_api/pets_repository.dart';

@Injectable(as: PetsRepository)
class PetsRepositoryImpl implements PetsRepository {
  final PetsDataSource _petsDataSource;

  PetsRepositoryImpl(
    this._petsDataSource,
  );

  @override
  Future<ApiResult<List<Pet>>> getAllPets() async {
    try {
      final List<Pet> pets = await _petsDataSource.getAllPets();
      return ApiResult.success(data: pets);
    } catch (exp) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<ApiResult<Pet>> getPetDetails(String id) async {
    try {
      final Pet pet = await _petsDataSource.getPetDetails(id);
      return ApiResult.success(data: pet);
    } catch (exp) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<ApiResult<void>> dislikePet(String id) async {
    try {
      await _petsDataSource.dislikePet(id);
      return ApiResult.success();
    } catch (exp) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<ApiResult<List<Pet>>> getAllLikedPets() async {
    try {
      final List<Pet> pets = await _petsDataSource.getAllLikedPets();
      return ApiResult.success(data: pets);
    } catch (exp) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<ApiResult<void>> likePet(String id) async {
    try {
      await _petsDataSource.likePet(id);
      return ApiResult.success();
    } catch (exp) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(exp));
    }
  }
}
