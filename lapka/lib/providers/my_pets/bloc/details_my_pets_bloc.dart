import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/repository/my_pets_repository.dart';

part 'details_my_pets_event.dart';
part 'details_my_pets_state.dart';
part 'details_my_pets_bloc.freezed.dart';

class DetailsMyPetsBloc extends Bloc<DetailsMyPetsEvent, DetailsMyPetsState> {
  MyPetsRepository _repository;
  DetailsMyPetsBloc(this._repository) : super(_Initial());

  @override
  Stream<DetailsMyPetsState> mapEventToState(
    DetailsMyPetsEvent event,
  ) async* {
    /* const factory DetailsMyPetsEvent.getDetails(String id) = _GetDetails;
  const factory DetailsMyPetsEvent.addVisit(dynamic object) = _AddVisit;
  const factory DetailsMyPetsEvent.editVisit(dynamic object) = _EditVisit;
  const factory DetailsMyPetsEvent.addVisitInformation(dynamic object) = _AddVisitInformation; */

    //TODO: Change ids and Object to Model

    if (event is _GetDetails) {
      yield DetailsMyPetsState.loading();
      try {
        Pet pet = await _repository.getPetCardDetails(event.id);
        yield DetailsMyPetsState.loaded(pet);
      } catch (e) {
        yield DetailsMyPetsState.error();
      }
    } else if (event is _AddVisit) {
      yield DetailsMyPetsState.loading();
      try {
        bool result = await _repository.addVisit(event.object);
        if (result)
          this.add(DetailsMyPetsEvent.getDetails('1'));
        else
          throw Exception();
      } catch (e) {
        yield DetailsMyPetsState.error();
      }
    } else if (event is _EditVisit) {
      yield DetailsMyPetsState.loading();
      try {
        bool result = await _repository.editVisitInformation(event.object);
        if (result)
          this.add(DetailsMyPetsEvent.getDetails('1'));
        else
          throw Exception();
      } catch (e) {
        yield DetailsMyPetsState.error();
      }
    } else if (event is _AddVisitInformation) {
      yield DetailsMyPetsState.loading();
      try {
        bool result = await _repository.addVisitInformation(event.object);
        if (result)
          this.add(DetailsMyPetsEvent.getDetails('1'));
        else
          throw Exception();
      } catch (e) {
        yield DetailsMyPetsState.error();
      }
    }
  }
}
