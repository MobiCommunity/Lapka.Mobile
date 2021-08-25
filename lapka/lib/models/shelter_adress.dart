import 'package:lapka/models/geo_location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shelter_adress.freezed.dart';
part 'shelter_adress.g.dart';

@freezed
abstract class ShelterAddress with _$ShelterAddress{

  const factory ShelterAddress({String? name, String? city, String? street, GeoLocation? geoLocation}) = _ShelterAddress;
  factory ShelterAddress.fromJson(Map<String, dynamic> json) => _$ShelterAddressFromJson(json);

  // ShelterAddress.fromJson(Map<String, dynamic> json) {
  //   name = json['name'];
  //   city = json['city'];
  //   street = json['street'];
  //   geoLocation = json['geoLocation'] != null
  //       ? new GeoLocation.fromJson(json['geoLocation'])
  //       : null;
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['name'] = this.name;
  //   data['city'] = this.city;
  //   data['street'] = this.street;
  //   if (this.geoLocation != null) {
  //     data['geoLocation'] = this.geoLocation!.toJson();
  //   }
  //   return data;
  // }
}