import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lapka/utils/location_helper.dart';

class LocationRepository {
  Position? position;
  String? city;

  Future determineLocation() async {
    Geolocator geolocator = Geolocator();

    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception();
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception();
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception();
    }
    try {
      position = await Geolocator.getCurrentPosition(
          forceAndroidLocationManager: true, timeLimit: Duration(seconds: 1));
    } catch (e) {
      throw Exception();
    }
    Placemark? placemark =
        await LocationHelper.getAddressFromPosition(position!);
    city = placemark!.locality;
  }
}
