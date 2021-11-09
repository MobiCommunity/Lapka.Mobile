import 'package:injectable/injectable.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/pets_api/pets_repository.dart';
import 'package:lapka/repository/result.dart';

@injectable
class DislikePetUseCase {
  final PetsRepository _petsRepository;
  const DislikePetUseCase(
    this._petsRepository,
  );

  Future<Result<void, NetworkExceptions>> call(String petId) async =>
      _petsRepository.dislikePet(petId);
}
