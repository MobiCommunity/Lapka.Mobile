import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

enum LocationStatus{NoPermision, Determined, New}

class LocationProvider with ChangeNotifier{
  Position? position;
  String? city;
  LocationStatus status = LocationStatus.New;
  
  getLocation()async {
    status = LocationStatus.New;

    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      status= LocationStatus.NoPermision;
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        status= LocationStatus.NoPermision;
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      status= LocationStatus.NoPermision;
      return;
    }

    Position tmpLocation = await Geolocator.getCurrentPosition(
        forceAndroidLocationManager: true);

    status= LocationStatus.Determined;
    position = tmpLocation;
    notifyListeners();
  }
}