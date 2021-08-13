

// class LatLngModel{
//   final double lat, lng;
//   const LatLngModel({required this.lat, required this.lng});
//   LatLngModel.fromPosition(Position position): this.lat = position.latitude, this.lng = position.latitude;
// }

class GeoLocation {
  double? latitude;
  double? longitude;

  GeoLocation({this.latitude, this.longitude});

  GeoLocation.fromJson(Map<String, dynamic> json) {
    latitude = double.tryParse(json['latitude']);
    longitude = double.tryParse(json['longitude']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}