import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lapka/domain/pet/use_cases/get_pets_list_use_case.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/result.dart';
import 'package:lapka/utils/species.dart';

part 'adopt_pet_list_bloc.freezed.dart';
part 'adopt_pet_list_event.dart';
part 'adopt_pet_list_state.dart';

@injectable
class AdoptPetListBloc extends Bloc<AdoptPetListEvent, AdoptPetListState> {
  final GetPetsListUseCase _getPetsListUseCase;

  AdoptPetListBloc(this._getPetsListUseCase)
      : super(AdoptPetListState(listState: _Initial(), filters: PetFilters(race: Species.All)));

  @override
  Stream<AdoptPetListState> mapEventToState(
    AdoptPetListEvent event,
  ) async* {
    if (event is _GetPets) {
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
        success: (pets) => state.copyWith(
          listState: ListState.loaded(pets!),
        ),
        failure: (error) => state.copyWith(
          listState: ListState.error(NetworkExceptions.getErrorMessage(error)),
        ),
      );
    } else if (event is _UpdateFilters) {
      yield state.copyWith(filters: event.filters);
    }
  }
}

@freezed
class PetFilters with _$PetFilters {
  const factory PetFilters({
    String? petName,
    Species? race,
    String? lat,
    String? lng,
  }) = _PetFilters;
}
