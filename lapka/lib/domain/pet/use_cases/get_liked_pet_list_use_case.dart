import 'package:injectable/injectable.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/pets_api/pets_repository.dart';
import 'package:lapka/repository/result.dart';
import 'package:lapka/utils/species.dart';

@injectable
class GetLikedPetListUseCase {
  final PetsRepository _petsRepository;
  const GetLikedPetListUseCase(
    this._petsRepository,
  );

  Future<Result<List<Pet>, NetworkExceptions>> call(
          {String? petName, Species? race, String? lat, String? lng}) async =>
      _petsRepository.getAllLikedPets(petName, race, lat, lng);
}
