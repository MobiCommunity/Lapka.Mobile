import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:lapka/models/shelter.dart';
import 'package:lapka/requests/requests.dart';
import 'package:lapka/settings/requestSettings.dart';

enum ShelterStatus { Loading, Done, Error, New }

class ShelterProvider with ChangeNotifier {
  ShelterStatus status = ShelterStatus.New;
  List<Shelter> shelters = [];
  getAllShelters() async {
    shelters = [];
    status = ShelterStatus.Loading;
    Response res =
        await Requests.sendRequest(identityUrl + 'api/shelter', null, Type.get);
    if (res.statusCode == 200) {
      if (res.body != '') {
        shelters = List<Shelter>.from(
            json.decode(res.body).map((model) => Shelter.fromJson(model)));
        status = ShelterStatus.Done;
        notifyListeners();
        return;
      }
    }
    status = ShelterStatus.Error;
  }

  Future<Shelter>getShelterDetails(String id) async {
    Response res =
        await Requests.sendRequest(identityUrl + 'api/shelter/$id', null, Type.get);
    if (res.statusCode == 200) {
      if (res.body != '') {
           return Shelter.fromJson(json.decode(res.body));
        
      }
    }
    throw NullThrownError;
  }
}
