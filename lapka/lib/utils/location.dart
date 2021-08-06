import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class LocationHelper {
final Geolocator geolocator = Geolocator();

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
}