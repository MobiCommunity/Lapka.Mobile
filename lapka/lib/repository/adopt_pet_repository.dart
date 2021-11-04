import 'dart:convert';

import 'package:http/http.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/requests/requests.dart';
import 'package:lapka/settings/request_settings.dart';

abstract class AdoptPetRepository {
  Future<List<Pet>> getAllPets();
  Future<Pet> getPetDetails(String id);
  Future<List<Pet>> getFilteredPets(String phrase);
}

class AdoptPetRepositoryApi with AdoptPetRepository {
  @override
  Future<List<Pet>> getAllPets() async {
    Response res = await Requests.sendRequest(
        baseUrl + 'api/pets/shelter/pet', null, Type.get);

    try {
      return List<Pet>.from(
          json.decode(res.body).map((model) => Pet.fromJson(model)));
    } catch (e) {
      print(e.toString());
      throw Exception();
    }
  }

  @override
  Future<List<Pet>> getFilteredPets(String phrase) async {
    try {
      Response res = await Requests.sendRequest(
          baseUrl + 'api/pets/shelter/pet/$phrase', null, Type.get);

      return List<Pet>.from(
          json.decode(res.body).map((model) => Pet.fromJson(model)));
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<Pet> getPetDetails(String id) async {
    try {
      Response res = await Requests.sendRequest(
          baseUrl + 'api/pets/shelter/pet/$id', null, Type.get);

      return Pet.fromJson(json.decode(res.body));
    } catch (e) {
      throw Exception();
    }
  }
}
