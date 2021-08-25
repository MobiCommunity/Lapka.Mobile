import 'dart:convert';

import 'package:http/http.dart';
import 'package:lapka/models/shelter.dart';
import 'package:lapka/requests/requests.dart';
import 'package:lapka/settings/request_settings.dart';

abstract class ShelterRepository {
  Future<List<Shelter>> getAllShelters();
  Future<Shelter> getShelterDetails(String id);
}

class ShelterRepositoryApi with ShelterRepository {
  @override
  Future<List<Shelter>> getAllShelters() async {
    try {
      Response res = await Requests.sendRequest(
          identityUrl + 'api/shelter', null, Type.get);
      return List<Shelter>.from(
          json.decode(res.body).map((model) => Shelter.fromJson(model)));
    } catch (e) {
      throw Exception('Wystąpił błąd');
    }
  }

  @override
  Future<Shelter> getShelterDetails(String id) async {
    try {
      Response res = await Requests.sendRequest(
          identityUrl + 'api/shelter/$id', null, Type.get);
      return Shelter.fromJson(json.decode(res.body));
    } catch (e) {
      throw Exception('Wystąpił błąd');
    }
  }
}
