import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/repository/my_pets_repository.dart';

part 'my_pets_event.dart';
part 'my_pets_state.dart';
part 'my_pets_bloc.freezed.dart';

class MyPetsBloc extends Bloc<MyPetsEvent, MyPetsState> {
  MyPetsRepository _repository;
  MyPetsBloc(this._repository) : super(_Initial());

  @override
  Stream<MyPetsState> mapEventToState(
    MyPetsEvent event,
  ) async* {
    if (event is _GetMyPets) {
      yield MyPetsState.loading();
      try {
        final pets = await _repository.getAllPets();
        yield MyPetsState.loaded(pets);
      } catch (e) {
        yield MyPetsState.error('Error');
      }
    }
  }
}
