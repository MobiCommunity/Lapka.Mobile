import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lapka/models/shelter.dart';
import 'package:lapka/repository/shelter_repository.dart';

part 'shelter_details_event.dart';
part 'shelter_details_state.dart';
part 'shelter_details_bloc.freezed.dart';

class ShelterDetailsBloc
    extends Bloc<ShelterDetailsEvent, ShelterDetailsState> {
  ShelterRepository _repository;
  ShelterDetailsBloc(this._repository) : super(_Initial());

  @override
  Stream<ShelterDetailsState> mapEventToState(
    ShelterDetailsEvent event,
  ) async* {
    if (event is _GetDetails) {
      yield ShelterDetailsState.loading();
      try {
        final shelters = await _repository.getShelterDetails(event.id);
        yield ShelterDetailsState.loaded(shelters);
      } catch (e) {
        yield ShelterDetailsState.error('Error');
      }
    }
  }
}
