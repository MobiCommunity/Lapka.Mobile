import 'package:injectable/injectable.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/pets_api/pets_data_source.dart';
import 'package:lapka/repository/pets_api/pets_repository.dart';
import 'package:lapka/repository/result.dart';

@Injectable(as: PetsRepository)
class PetsRepositoryImpl implements PetsRepository {
  final PetsDataSource _petsDataSource;

  PetsRepositoryImpl(
    this._petsDataSource,
  );

  @override
  Future<Result<List<Pet>, NetworkExceptions>> getAllPets() async {
    try {
      final List<Pet> pets = await _petsDataSource.getAllPets();
      return Result.success(data: pets);
    } catch (exp) {
      return Result.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<Result<Pet, NetworkExceptions>> getPetDetails(String id) async {
    try {
      final Pet pet = await _petsDataSource.getPetDetails(id);
      return Result.success(data: pet);
    } catch (exp) {
      return Result.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<Result<void, NetworkExceptions>> dislikePet(String id) async {
    try {
      await _petsDataSource.dislikePet(id);
      return Result.success();
    } catch (exp) {
      return Result.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<Result<List<Pet>, NetworkExceptions>> getAllLikedPets() async {
    try {
      final List<Pet> pets = await _petsDataSource.getAllLikedPets();
      return Result.success(data: pets);
    } catch (exp) {
      return Result.failure(error: NetworkExceptions.getDioException(exp));
    }
  }

  @override
  Future<Result<void, NetworkExceptions>> likePet(String id) async {
    try {
      await _petsDataSource.likePet(id);
      return Result.success();
    } catch (exp) {
      return Result.failure(error: NetworkExceptions.getDioException(exp));
    }
  }
}
