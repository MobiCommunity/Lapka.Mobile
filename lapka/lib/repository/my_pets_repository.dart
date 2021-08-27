import 'dart:convert';
import 'dart:math';

import 'package:lapka/models/pet.dart';

abstract class MyPetsRepository {
  Future<List<Pet>> getAllPets();
  Future<Pet> getPetDetails(String id);
  Future<String> createMyPet(Pet pet);
  Future<bool> editMyPet(Pet pet);
  Future<bool> deleteMyPet(String id);
}

class MyPetsRepositoryFake with MyPetsRepository {

  @override
  Future<List<Pet>> getAllPets() async {
    String fakeRes = '[ { "id": "1bdda077-6000-449f-a82a-5e19f7abe440", "name": "Kapeć", "sex": 1, "mainPhotoPath": "085b342f66134153910b3d0e2f787b8b.png", "race": "Spaniel", "birthDay": "1990-10-10T00:00:00Z", "shelterAddress": { "name": "AdoptMe", "city": "Rzeszów", "street": "Witolda 25", "geoLocation": { "latitude": "50", "longitude": "32" } } }, { "id": "32045a27-e89d-454d-ad9b-d2989824a1cd", "name": "Kapeć", "sex": 1, "mainPhotoPath": "981f0501cd8c48ca9fe57f66e43c0577.png", "race": "Spaniel", "birthDay": "1990-10-10T00:00:00Z", "shelterAddress": { "name": "AdoptMe", "city": "Rzeszów", "street": "Witolda 25", "geoLocation": { "latitude": "50", "longitude": "32" } } }, { "id": "dc5930c9-13ca-44fc-b90b-aee4939a085a", "name": "Kapeć", "sex": 1, "mainPhotoPath": "8f4f75c8315347d69aec5e44a60b7ce6.png", "race": "Spaniel", "birthDay": "1990-10-10T00:00:00Z", "shelterAddress": { "name": "AdoptMe", "city": "Rzeszów", "street": "Witolda 25", "geoLocation": { "latitude": "50", "longitude": "32" } } }, { "id": "167be5f8-49ef-4437-862e-ef1a8702a49f", "name": "Ja", "sex": 0, "mainPhotoPath": "a3638c5e6c4b4a5f8acf20f7e294f22f.png", "race": "zartowalem", "birthDay": "1100-10-10T00:00:00Z", "shelterAddress": { "name": "nazwami", "city": "jak", "street": "cos", "geoLocation": { "latitude": "55", "longitude": "52" } } }, { "id": "1618e1f9-ca77-4295-a539-af6266475172", "name": "Ja", "sex": 0, "mainPhotoPath": "21e029c9323e417b84f5db502ecf327b.png", "race": "zartowalem", "birthDay": "1100-10-10T00:00:00Z", "shelterAddress": { "name": "nazwami", "city": "jak", "street": "cos", "geoLocation": { "latitude": "55", "longitude": "52" } } }, { "id": "06359d3a-0736-4d77-98b5-28b9ca691545", "name": "Kaczor", "sex": 0, "mainPhotoPath": "5958b2e147e549da94034619b8a60023.jpeg", "race": "Groźny", "birthDay": "2009-12-09T00:00:00Z", "shelterAddress": { "name": "Zoo", "city": "Rzeszów", "street": "Kopytko", "geoLocation": { "latitude": "12", "longitude": "43" } } } ]';
    return Future.delayed(
      Duration(seconds: 1),
      (){
        final random = Random();
        if(random.nextBool()){
          throw Exception();
        }
        return List<Pet>.from(
          json.decode(fakeRes).map((model) => Pet.fromJson(model)));
      }
    );
  }

  @override
  Future<Pet> getPetDetails(String id) async {
    String fakeRes = '{ "id": "06359d3a-0736-4d77-98b5-28b9ca691545", "name": "Kaczor", "sex": 0, "mainPhotoPath": "5958b2e147e549da94034619b8a60023.jpeg", "race": "Groźny", "birthDay": "2009-12-09T00:00:00Z", "shelterAddress": { "name": "Zoo", "city": "Rzeszów", "street": "Kopytko", "geoLocation": { "latitude": "12", "longitude": "43" } } }';
    return Future.delayed(
      Duration(seconds: 1),
      (){
        final random = Random();
        if(random.nextBool()){
          throw Exception();
        }
        return Pet.fromJson(json.decode(fakeRes));
      }
    );
  }

  @override
  Future<String> createMyPet(Pet pet) async {
    print(pet.toString());
    return Future.delayed(
      Duration(seconds: 1),
      (){
        return 'exampleID';
      }
    );
  }

  @override
  Future<bool> editMyPet(Pet pet) async {
    print(pet.toString());
    return Future.delayed(
      Duration(seconds: 1),
      (){
        final random = Random();
        if(random.nextBool()){
          throw Exception();
        }
        return random.nextBool();
      }
    );
  }

  @override
  Future<bool> deleteMyPet(String id) async {
    print(id.toString());
    return Future.delayed(
      Duration(seconds: 1),
      (){
        final random = Random();
        if(random.nextBool()){
          throw Exception();
        }
        return random.nextBool();
      }
    );
  }
}