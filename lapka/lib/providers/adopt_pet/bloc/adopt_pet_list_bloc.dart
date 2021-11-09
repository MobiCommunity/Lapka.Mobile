import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:lapka/domain/pet/use_cases/dislike_pet_use_case.dart';
import 'package:lapka/domain/pet/use_cases/get_pets_list_use_case.dart';
import 'package:lapka/domain/pet/use_cases/like_pet_use_case.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/providers/base_pet_list_bloc/base_pet_list_bloc.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/result.dart';
import 'package:lapka/utils/broadcasters/auth_broadcaster.dart';

@injectable
class AdoptPetListBloc extends BasePetListBloc {
  final GetPetsListUseCase _getPetsListUseCase;
  final LikePetUseCase _likePetUseCase;
  final DislikePetUseCase _dislikePetUseCase;
  final AuthBroadcaster _authBroadcaster;

  AdoptPetListBloc(
    this._getPetsListUseCase,
    this._likePetUseCase,
    this._dislikePetUseCase,
    this._authBroadcaster,
  ) : super(
          _likePetUseCase,
          _dislikePetUseCase,
          _authBroadcaster,
        );

  @override
  Stream<BasePetListBlocState> mapEventToState(
    BasePetListBlocEvent event,
  ) async* {
    super.mapEventToState(event);
    if (event is GetPets) {
      yield state.copyWith(listState: ListState.loading());
      late final Result<List<Pet>, NetworkExceptions> petsResult;

      if (event.filters != null) {
        petsResult = await _getPetsListUseCase(
          petName: event.filters?.petName,
          race: event.filters?.race,
          lat: event.filters?.lat,
          lng: event.filters?.lng,
        );
      } else {
        petsResult = await _getPetsListUseCase(
          petName: state.filters.petName,
          race: state.filters.race,
          lat: state.filters.lat,
          lng: state.filters.lng,
        );
      }
      yield petsResult.when(
        success: (pets) {
          petList = pets!;
          return state.copyWith(
            listState: ListState.loaded(pets),
          );
        },
        failure: (error) => state.copyWith(
          listState: ListState.error(NetworkExceptions.getErrorMessage(error)),
        ),
      );
    } else if (event is UpdateFilters) {
      yield state.copyWith(filters: event.filters);
    }
  }
}
