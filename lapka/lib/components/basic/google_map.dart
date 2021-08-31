import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lapka/components/basic/basic_button.dart';
import 'package:lapka/components/dialogs/basic_dialog.dart';
import 'package:lapka/components/dialogs/confirm_pos_dialog.dart';
import 'package:lapka/settings/naviagtion/navigator_helper.dart';

class MapScreen extends StatefulWidget {
  Function(LatLng position) onAcceptCallback;
  MapScreen(this.onAcceptCallback);
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
              onLongPress: _addMarker,
              gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>[
                new Factory<OneSequenceGestureRecognizer>(
                  () => new EagerGestureRecognizer(),
                ),
              ].toSet()),
          Container(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                  child: place.isEmpty
                      ? BasicButton(
                          onPressed: () {
                            NavigatorHelper.pop(context);
                          },
                          text: 'ZAMKNIJ')
                      : BasicButton(
                          onPressed: () {
                            setState(() {
                              BasicDialog.showDialogCustom(
                                  context,
                                  ConfirmPosDialog(
                                    onAccept: () {
                                      Navigator.of(context).pop();
                                      print('Accept');
                                      if(place.isNotEmpty){
                                        widget.onAcceptCallback(place.first.position);
                                      }
                                      NavigatorHelper.pop(context);
                                    },
                                    onCancel: () {
                                      Navigator.of(context).pop();
                                      print('Deny');
                                      NavigatorHelper.pop(context);
                                    },
                                  ));
                            });
                          },
                          text: 'ZATWIERDŹ'))),
        ],
      ),
    );
  }

  _addMarker(LatLng position) {
    setState(() {
      place = [
        Marker(
          markerId: MarkerId('Miejsce'),
          position: position,
        )
      ];
    });
  }
}
