import 'package:injectable/injectable.dart';
import 'package:lapka/domain/pet/use_cases/get_liked_pet_list_use_case.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/providers/base_pet_list_bloc/base_pet_list_bloc.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/result.dart';

@injectable
class LikedPetsBloc extends BasePetListBloc {
  final GetLikedPetListUseCase _getLikedPetListUseCase;

  LikedPetsBloc(
    this._getLikedPetListUseCase,
  );

  @override
  Stream<BasePetListBlocState> mapEventToState(
      BasePetListBlocEvent event) async* {
    if (event is GetPets) {
      yield state.copyWith(listState: ListState.loading());
      late final Result<List<Pet>, NetworkExceptions> petsResult;

      if (event.filters != null) {
        petsResult = await _getLikedPetListUseCase(
          petName: event.filters?.petName,
          race: event.filters?.race,
          lat: event.filters?.lat,
          lng: event.filters?.lng,
        );
      } else {
        petsResult = await _getLikedPetListUseCase(
          petName: state.filters.petName,
          race: state.filters.race,
          lat: state.filters.lat,
          lng: state.filters.lng,
        );
      }

      yield petsResult.when(
        success: (pets) => state.copyWith(
          listState: ListState.loaded(pets!),
        ),
        failure: (error) => state.copyWith(
          listState: ListState.error(NetworkExceptions.getErrorMessage(error)),
        ),
      );
    } else if (event is UpdateFilters) {
      yield state.copyWith(filters: event.filters);
    }
  }
}
