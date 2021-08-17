import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/requests/requests.dart';
import 'package:lapka/settings/requestSettings.dart';

enum AdoptPetStatus{Loading, Done,Error,New}
enum Species{All, Dogs, Cats, Rabbits, Parots}

class AdoptPetProvider with ChangeNotifier{
  AdoptPetStatus status = AdoptPetStatus.New;
  List<Pet> pets = [];

  Species _speciesFilter = Species.All;

  set speciesFilter(Species value) {
    _speciesFilter = value;
    notifyListeners();
  }
  Species get speciesFilter => _speciesFilter;
  
  getAllPets()async {
    pets = [];
    status = AdoptPetStatus.Loading;
    Response res = await Requests.sendRequest(baseUrl + 'api/pet', null, Type.get);
    if(res.statusCode ==200){
      if(res.body != ''){
        pets = List<Pet>.from(json.decode(res.body).map((model)=> Pet.fromJson(model)));
        status = AdoptPetStatus.Done;
        notifyListeners();
        return;
      }
    }
    status = AdoptPetStatus.Error;
  }

  Future<Pet> getPetDetails(String id)async{
    Response res = await Requests.sendRequest(baseUrl + 'api/pet/$id', null, Type.get);
    if(res.statusCode ==200){
      if(res.body != ''){
        return Pet.fromJson(json.decode(res.body));
      }
    }
    throw NullThrownError;
  }
}