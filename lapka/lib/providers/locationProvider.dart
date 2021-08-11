import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lapka/models/latLng.dart';
import 'package:lapka/utils/locationHelper.dart';

enum LocationStatus{NoPermision, Determined, New, NoLocation}

class LocationProvider with ChangeNotifier{
  Position? position;
  String? city;
  LocationStatus status = LocationStatus.New;
  
  getLocation()async {
    Geolocator geolocator = Geolocator();
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
    try{
    position = await Geolocator.getCurrentPosition(forceAndroidLocationManager: true, timeLimit: Duration(seconds: 1));
    }catch(e){
      print(e);
      status= LocationStatus.NoLocation;
      notifyListeners();
      return;
    }
    Placemark? placemark = await LocationHelper.getAddressFromLatLng(position!);
    city = placemark!.locality;
    status= LocationStatus.Determined;
    notifyListeners();
    return;
  }
}