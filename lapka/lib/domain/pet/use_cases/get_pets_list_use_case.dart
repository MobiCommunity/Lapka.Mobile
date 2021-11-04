import 'package:injectable/injectable.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/pets_api/pets_repository.dart';
import 'package:lapka/repository/result.dart';
import 'package:lapka/utils/species.dart';

@injectable
class GetPetsListUseCase {
  final PetsRepository _petsRepository;
  const GetPetsListUseCase(
    this._petsRepository,
  );

  Future<Result<List<Pet>, NetworkExceptions>> call(
          {String? petName, Species? race, String? lat, String? lng}) async =>
      _petsRepository.getPets(petName, race, lat, lng);
}
