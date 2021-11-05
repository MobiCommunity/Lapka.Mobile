import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/utils/species.dart';

part 'base_pet_list_bloc_event.dart';
part 'base_pet_list_bloc_state.dart';
part 'base_pet_list_bloc.freezed.dart';

abstract class BasePetListBloc extends Bloc<BasePetListBlocEvent, BasePetListBlocState> {
  BasePetListBloc() : super(BasePetListBlocState(listState: _Initial(), filters: PetFilters()));
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
