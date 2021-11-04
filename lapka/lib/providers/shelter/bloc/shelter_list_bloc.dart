import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lapka/models/shelter.dart';
import 'package:lapka/repository/shelter_repository.dart';

part 'shelter_list_event.dart';
part 'shelter_list_state.dart';
part 'shelter_list_bloc.freezed.dart';

class ShelterListBloc extends Bloc<ShelterListEvent, ShelterListState> {
  ShelterRepository _repository;
  ShelterListBloc(this._repository) : super(_Initial());

  @override
  Stream<ShelterListState> mapEventToState(
    ShelterListEvent event,
  ) async* {
    if (event is _GetShelters) {
      yield ShelterListState.loading();
      try {
        final shelters = await _repository.getAllShelters();
        yield ShelterListState.loaded(shelters);
      } catch (e) {
        yield ShelterListState.error('Error');
      }
    }
  }
}
