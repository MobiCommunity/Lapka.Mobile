import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lapka/components/basic/basic_button.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/providers/my_pets/bloc/my_pets_bloc.dart';
import 'package:lapka/repository/my_pets_repository.dart';

part 'edit_my_pets_event.dart';
part 'edit_my_pets_state.dart';
part 'edit_my_pets_bloc.freezed.dart';

class EditMyPetsBloc extends Bloc<EditMyPetsEvent, EditMyPetsState> {
  MyPetsRepository _repository;
  MyPetsBloc myPetsBloc;
  EditMyPetsBloc(this._repository ,this.myPetsBloc) : super(_Initial());

  @override
  Stream<EditMyPetsState> mapEventToState(
    EditMyPetsEvent event,
  ) async* {
    
    if(event is _Create){
      yield EditMyPetsState.loading();
      try{
        String id = await _repository.createMyPet(event.pet);
        myPetsBloc.add(MyPetsEvent.getMyPets());
        yield EditMyPetsState.edited();
      }catch(e){
        yield EditMyPetsState.error("Error adding");
      }
    }
    else if (event is _Update){
      yield EditMyPetsState.loading();
      try{
        await _repository.editMyPet(event.pet);
        myPetsBloc.add(MyPetsEvent.getMyPets());
        yield EditMyPetsState.edited();
      }catch(e){
        yield EditMyPetsState.error("Error updating");
      }
    }
    else if (event is _Delete){
      yield EditMyPetsState.loading();
      try{
        await _repository.deleteMyPet(event.id);
        myPetsBloc.add(MyPetsEvent.getMyPets());
       yield EditMyPetsState.edited();
      }catch(e){
        yield EditMyPetsState.error("Error delete");
      }
    }
    else if (event is _Read){
      yield EditMyPetsState.loading();
      try{
        Pet pet = await _repository.getPetDetails(event.id);
        yield EditMyPetsState.loaded(pet);
      }catch(e){
        yield EditMyPetsState.error("Error laoding");
      }
    }
    else if(event is _Reset){
      yield EditMyPetsState.initial();
    }
  }
}
