import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lapka/models/latLng.dart';

class LocationHelper {

  static Future<Placemark?> getAddressFromLatLng(Position position) async {
    try {
      List<Placemark> p = await placemarkFromCoordinates(position.latitude, position.longitude);
      if(p.isNotEmpty)
        return p[0];
    } catch (e) {
      print(e);
    }
    return null;
  }

  static double getDistance(LatLngModel? current, LatLngModel desired){
    if(current != null)
    return Geolocator.distanceBetween(current.lat, current.lng, desired.lat, desired.lng) / 1000;
    return 0;
  }
}