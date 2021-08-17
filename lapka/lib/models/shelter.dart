import 'package:lapka/models/geoLocation.dart';
import 'package:lapka/models/shelterAdress.dart';

class Shelter {
  String? id;
  String? name;
  ShelterAddress? address;
  String? phoneNumber;
  String? email;

  Shelter({this.id, this.name, this.address, this.phoneNumber, this.email});

  Shelter.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    address = json['address'] != null
        ? new ShelterAddress.fromJson(json['address'])
        : null;
    address!.geoLocation = json['geoLocation'] != null
        ? new GeoLocation.fromJson(json['geoLocation'])
        : null;
    phoneNumber = json['phoneNumber'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.address != null) {
      data['address'] = this.address!.toJson();
    }
    data['phoneNumber'] = this.phoneNumber;
    data['email'] = this.email;
    return data;
  }
}
