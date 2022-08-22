import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {

  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kCUT = CameraPosition(
    target: LatLng( 20.5667596113299, -103.2286319252632 ),
    zoom: 15
  );

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: _kCUT,
      onMapCreated: ( GoogleMapController controller ) {
        _controller.complete( controller );
      },
    );
  }
}