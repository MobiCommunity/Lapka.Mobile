import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lapka/models/geo_location.dart';
import 'package:lapka/providers/location/bloc/location_bloc.dart';

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

  static double _getDistance(Position? current, GeoLocation desired){
    if(current != null)
    return Geolocator.distanceBetween(current.latitude, current.longitude, desired.latitude!, desired.longitude!) / 1000;
    return 0;
  }

  static String getCityName(LocationState state){
    return state.when(
        initial: (){return 'Ładowanie...';} ,
        loading: (){return 'Ładowanie...';},
        determined: (val)=> val.city!,
        noPermission: (){return 'Nieznana';},
        error: (message){return 'Nieznana';}
        );
  }

  static double getDistance(LocationState state, GeoLocation location){
    return state.when(
        initial: (){return 0;} ,
        loading: (){return 0;},
        determined: (val){return _getDistance(val.position, location);},
        noPermission: (){return 0;},
        error: (message){return 0;}
        );
  }
}