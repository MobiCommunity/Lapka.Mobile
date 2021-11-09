import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lapka/domain/pet/use_cases/dislike_pet_use_case.dart';
import 'package:lapka/domain/pet/use_cases/like_pet_use_case.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/repository/network_exceptions.dart';
import 'package:lapka/repository/result.dart';
import 'package:lapka/utils/broadcasters/auth_broadcaster.dart';
import 'package:lapka/utils/mixins/pet_mixin.dart';
import 'package:lapka/utils/species.dart';

part 'base_pet_list_bloc.freezed.dart';
part 'base_pet_list_bloc_event.dart';
part 'base_pet_list_bloc_state.dart';

abstract class BasePetListBloc
    extends Bloc<BasePetListBlocEvent, BasePetListBlocState> with PetMixin {
  final LikePetUseCase _likePetUseCase;
  final DislikePetUseCase _dislikePetUseCase;
  final AuthBroadcaster _authBroadcaster;

  BasePetListBloc(
      this._likePetUseCase, this._dislikePetUseCase, this._authBroadcaster)
      : super(BasePetListBlocState(
          listState: _Initial(),
          filters: PetFilters(),
          authState: _authBroadcaster.currentState,
        ));

  late List<Pet> petList;

  @override
  Stream<BasePetListBlocState> mapEventToState(
      BasePetListBlocEvent event) async* {
    if (event is LikePet) {
      handleLikePetEvent(event.petId);
    } else if (event is DislikePet) {
      handleDislikePetEvent(event.petId);
    }
  }

  Stream<BasePetListBlocState> handleLikePetEvent(String petId) async* {
    final result = await _likePetUseCase(petId);
    handleLikeDislikeApiResult(result, petId);
  }

  Stream<BasePetListBlocState> handleDislikePetEvent(String petId) async* {
    final result = await _dislikePetUseCase(petId);
    handleLikeDislikeApiResult(result, petId);
  }

  Stream<BasePetListBlocState> handleLikeDislikeApiResult(
      Result<void, NetworkExceptions> result, String petId) async* {
    yield* result.when(
      success: (_) async* {
        likeDislikePet(petId, petList);
        yield state.copyWith(
            listState: ListState.loaded(petList),
            authState: _authBroadcaster.currentState);
      },
      failure: (error) async* {
        yield state.copyWith(
          listState: ListState.error(
            error.toString(),
          ),
          authState: _authBroadcaster.currentState,
        );
      },
    );
  }
}

@freezed
class PetFilters with _$PetFilters {
  const factory PetFilters({
    String? petName,
    Species? race,
    String? lat,
    String? lng,
  }) = _PetFilters;
}
