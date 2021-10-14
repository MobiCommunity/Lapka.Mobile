import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/pets_api/pets_repository.dart';

part 'like_pet_bloc.freezed.dart';

part 'like_pet_event.dart';

part 'like_pet_state.dart';

@injectable
class LikePetBloc extends Bloc<LikePetEvent, LikePetState> {
  final PetsRepository _repository;

  LikePetBloc(this._repository) : super(_Unknown());

  @override
  Stream<LikePetState> mapEventToState(
    LikePetEvent event,
  ) async* {
    yield LikePetState.fetching();
    if (event is _Like) {
      final response = await _repository.likePet(event.id);

      yield* response.when(
        success: (_) async* {
          yield LikePetState.liked();
        },
        failure: (error) async* {
          yield LikePetState.error(NetworkExceptions.getErrorMessage(error));
        },
      );
    } else if (event is _Dislike) {
      final response = await _repository.dislikePet(event.id);

      yield* response.when(
        success: (_) async* {
          yield LikePetState.disliked();
        },
        failure: (error) async* {
          yield LikePetState.error(NetworkExceptions.getErrorMessage(error));
        },
      );
    }
  }
}
