import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lapka/domain/pet/use_cases/dislike_pet_use_case.dart';
import 'package:lapka/domain/pet/use_cases/like_pet_use_case.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/repository/pets_api/pets_repository.dart';
import 'package:lapka/utils/broadcasters/auth_broadcaster.dart';
import 'package:lapka/utils/mixins/pet_mixin.dart';

part 'adopt_pet_details_bloc.freezed.dart';
part 'adopt_pet_details_event.dart';
part 'adopt_pet_details_state.dart';

@injectable
class AdoptPetDetailsBloc
    extends Bloc<AdoptPetDetailsEvent, AdoptPetDetailsState> with PetMixin {
  final PetsRepository _repository;
  final LikePetUseCase _likePetUseCase;
  final DislikePetUseCase _dislikePetUseCase;
  final AuthBroadcaster _authBroadcaster;

  late final Pet fetchedPet;

  AdoptPetDetailsBloc(this._repository, this._likePetUseCase,
      this._dislikePetUseCase, this._authBroadcaster)
      : super(
          AdoptPetDetailsState(
            detailsState: DetailsState.initial(),
            authState: _authBroadcaster.currentState,
          ),
        );

  @override
  Stream<AdoptPetDetailsState> mapEventToState(
    AdoptPetDetailsEvent event,
  ) async* {
    if (event is _GetDetails) {
      yield AdoptPetDetailsState(
        detailsState: DetailsState.loading(),
        authState: _authBroadcaster.currentState,
      );
      final response = await _repository.getPetDetails(event.id);

      yield* response.when(
        success: (pet) async* {
          fetchedPet = pet!;
          yield AdoptPetDetailsState(
            detailsState: DetailsState.loaded(pet),
            authState: _authBroadcaster.currentState,
          );
        },
        failure: (error) async* {
          yield AdoptPetDetailsState(
            detailsState: DetailsState.error(error.toString()),
            authState: _authBroadcaster.currentState,
          );
        },
      );
    } else if (event is _Like) {
      final response = await _likePetUseCase(event.id);

      yield* response.when(
        success: (_) async* {
          like(fetchedPet);
          yield AdoptPetDetailsState(
            detailsState: DetailsState.loaded(fetchedPet),
            authState: _authBroadcaster.currentState,
          );
        },
        failure: (error) async* {
          yield AdoptPetDetailsState(
            detailsState: DetailsState.error(error.toString()),
            authState: _authBroadcaster.currentState,
          );
        },
      );
    } else if (event is _Dislike) {
      final response = await _dislikePetUseCase(event.id);

      yield* response.when(
        success: (_) async* {
          dislike(fetchedPet);
          yield AdoptPetDetailsState(
            detailsState: DetailsState.loaded(fetchedPet),
            authState: _authBroadcaster.currentState,
          );
        },
        failure: (error) async* {
          yield AdoptPetDetailsState(
            detailsState: DetailsState.error(error.toString()),
            authState: _authBroadcaster.currentState,
          );
        },
      );
    }
  }
}
