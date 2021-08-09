import 'package:geolocator/geolocator.dart';

class LatLngModel{
  final double lat, lng;
  const LatLngModel({required this.lat, required this.lng});
  LatLngModel.fromPosition(Position position): this.lat = position.latitude, this.lng = position.latitude;
}