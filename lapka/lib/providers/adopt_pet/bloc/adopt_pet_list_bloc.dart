import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/repository/adopt_pet_repository.dart';

part 'adopt_pet_list_event.dart';
part 'adopt_pet_list_state.dart';
part 'adopt_pet_list_bloc.freezed.dart';

class AdoptPetListBloc extends Bloc<AdoptPetListEvent, AdoptPetListState> {
  final AdoptPetRepository _repository;
  AdoptPetListBloc(this._repository) : super(_Initial());

  @override
  Stream<AdoptPetListState> mapEventToState(
    AdoptPetListEvent event,
  ) async* {
    if (event is _GetAllPets) {
      yield AdoptPetListState.loading();
      try {
        final pets = await _repository.getAllPets();
        yield AdoptPetListState.loaded(pets);
      } catch (e) {
        yield AdoptPetListState.error('Error');
      }
    } else if (event is _GetFilteredPets) {
      yield AdoptPetListState.loading();
      try {
        final pets = await _repository.getFilteredPets(event.phrase);
        yield AdoptPetListState.loaded(pets);
      } catch (e) {
        yield AdoptPetListState.error('Error');
      }
    }
  }
}
