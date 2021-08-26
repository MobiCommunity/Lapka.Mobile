import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lapka/components/basic/basic_button.dart';
import 'package:lapka/components/dialogs/basic_dialog.dart';
import 'package:lapka/components/dialogs/confirm_pos_dialog.dart';


class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(52.237049, 21.017532),
    zoom: 11.0,
    );

  List<Marker> place = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _initialCameraPosition,
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
            markers: Set.from(place),
            onTap: _addMarker,
          ),
          Container(
            alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 100, bottom: 10, right: 100),
                child: place.isEmpty ?
                  BasicButton(onPressed: (){Navigator.pop(context);}, text: 'ZAMKNIJ') :
                  BasicButton(onPressed: (){
                    setState(() {
                    BasicDialog.showDialogCustom(
                        context,
                        ConfirmPosDialog(
                          onExit: () {Navigator.pop(context);},
                          onLogin: () {Navigator.pop(context);},
                        )
                    );
                  });}, text: 'ZATWIERDŹ')
              )
          ),
        ],
      ),
    );
  }

  _addMarker(LatLng pos){
    setState(() {

      print(pos);
      place = [];
      place.add(
          Marker(
            markerId: MarkerId('Miejsce'),
            position: pos,
          )
      );
    });
  }

}