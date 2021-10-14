import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/pets_api/pets_repository.dart';

part 'adopt_pet_details_bloc.freezed.dart';

part 'adopt_pet_details_event.dart';

part 'adopt_pet_details_state.dart';

@injectable
class AdoptPetDetailsBloc
    extends Bloc<AdoptPetDetailsEvent, AdoptPetDetailsState> {
  final PetsRepository _repository;

  AdoptPetDetailsBloc(this._repository) : super(_Initial());

  @override
  Stream<AdoptPetDetailsState> mapEventToState(
    AdoptPetDetailsEvent event,
  ) async* {
    if (event is _GetDetails) {
      yield AdoptPetDetailsState.loading();
      final response = await _repository.getPetDetails(event.id);

      yield* response.when(
        success: (pet) async* {
          yield AdoptPetDetailsState.loaded(pet!);
        },
        failure: (error) async* {
          yield AdoptPetDetailsState.error(
              NetworkExceptions.getErrorMessage(error));
        },
      );
    }
  }
}
