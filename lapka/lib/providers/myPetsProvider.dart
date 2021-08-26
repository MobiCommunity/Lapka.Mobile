import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/requests/requests.dart';
import 'package:lapka/settings/requestSettings.dart';

enum MyPetsStatus { Loading, Done, Error, New }

class MyPetsProvider with ChangeNotifier {
  MyPetsStatus status = MyPetsStatus.New;
  List<Pet> pets = [];

  getAllPets() async {
    pets = [];
    status = MyPetsStatus.Loading;
    Response res =
    await Requests.sendRequest(baseUrl + 'api/pet', null, Type.get);
    if (res.statusCode == 200) {
      if (res.body != '') {
        pets = List<Pet>.from(
            json.decode(res.body).map((model) => Pet.fromJson(model)));
        status = MyPetsStatus.Done;
        notifyListeners();
        return;
      }
    }
    status = MyPetsStatus.Error;
  }
}
