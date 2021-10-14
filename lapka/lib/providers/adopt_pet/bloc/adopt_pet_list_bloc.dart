import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/repository/adopt_pet_repository.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/pets_api/pets_repository.dart';

part 'adopt_pet_list_bloc.freezed.dart';

part 'adopt_pet_list_event.dart';

part 'adopt_pet_list_state.dart';

@injectable
class AdoptPetListBloc extends Bloc<AdoptPetListEvent, AdoptPetListState> {
  // final AdoptPetRepository _repository;
  final PetsRepository _repository;

  AdoptPetListBloc(this._repository) : super(_Initial());

  @override
  Stream<AdoptPetListState> mapEventToState(
    AdoptPetListEvent event,
  ) async* {
    if (event is _GetAllPets) {
      yield AdoptPetListState.loading();
      final response = await _repository.getAllPets();

      yield* response.when(
        success: (pets) async* {
          yield AdoptPetListState.loaded(pets!);
        },
        failure: (error) async* {
          yield AdoptPetListState.error(
            NetworkExceptions.getErrorMessage(error),
          );
        },
      );
    } else if (event is _GetFilteredPets) {
      yield AdoptPetListState.loading();
      // try {
      // final pets = await _repository.getFilteredPets(event.phrase);
      // yield AdoptPetListState.loaded(pets);
      // } catch (e) {
      yield AdoptPetListState.error('Error');
      // }
    }
  }
}
