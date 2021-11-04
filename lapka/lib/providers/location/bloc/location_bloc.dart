import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lapka/repository/location_repository.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final LocationRepository _repository;
  LocationBloc(this._repository) : super(_Initial());

  @override
  Stream<LocationState> mapEventToState(
    LocationEvent event,
  ) async* {
    if (event is _DeterminePosition) {
      yield LocationState.loading();
      try {
        await _repository.determineLocation();
        yield LocationState.determined(_repository);
      } catch (e) {
        yield LocationState.error('error');
      }
    } else if (event is _GetPosition) {
      yield LocationState.determined(_repository);
    }
  }
}
