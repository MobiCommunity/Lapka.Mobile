import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/repository/adopt_pet_repository.dart';

part 'adopt_pet_details_event.dart';
part 'adopt_pet_details_state.dart';
part 'adopt_pet_details_bloc.freezed.dart';

class AdoptPetDetailsBloc
    extends Bloc<AdoptPetDetailsEvent, AdoptPetDetailsState> {
  final AdoptPetRepository _repository;
  AdoptPetDetailsBloc(this._repository) : super(_Initial());

  @override
  Stream<AdoptPetDetailsState> mapEventToState(
    AdoptPetDetailsEvent event,
  ) async* {
    if (event is _GetDetails) {
      yield AdoptPetDetailsState.loading();
      try {
        final pet = await _repository.getPetDetails(event.id);
        yield AdoptPetDetailsState.loaded(pet);
      } catch (e) {
        yield AdoptPetDetailsState.error('Error');
      }
    }
  }
}
