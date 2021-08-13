import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lapka/models/geoLocation.dart';

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

  static double getDistance(Position? current, GeoLocation desired){
    if(current != null)
    return Geolocator.distanceBetween(current.latitude, current.longitude, desired.latitude!, desired.longitude!) / 1000;
    return 0;
  }
}