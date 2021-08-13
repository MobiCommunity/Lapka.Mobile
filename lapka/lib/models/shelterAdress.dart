import 'package:lapka/models/geoLocation.dart';

class ShelterAddress {
  String? name;
  String? city;
  String? street;
  GeoLocation? geoLocation;

  ShelterAddress({this.name, this.city, this.street, this.geoLocation});

  ShelterAddress.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    city = json['city'];
    street = json['street'];
    geoLocation = json['geoLocation'] != null
        ? new GeoLocation.fromJson(json['geoLocation'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['city'] = this.city;
    data['street'] = this.street;
    if (this.geoLocation != null) {
      data['geoLocation'] = this.geoLocation!.toJson();
    }
    return data;
  }
}