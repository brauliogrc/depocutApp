// Tutorial de Google Maps

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart'; // Importacion de google maps

class PageMaps extends StatelessWidget {
  const PageMaps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Google Maps Demo',
      home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
 const MapSample({Key? key}) : super(key: key);

  @override
  State<MapSample> createState() => _MapSampleState();
}

class _MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng( 20.5667596113299, -103.2286319252632 ),
    zoom:  15
  );

  static const CameraPosition _kCatedral = CameraPosition(
      bearing: 192.83,
      target: LatLng(46.947346591649676, 7.451181040236919),
      tilt: 59.440717697143555,
      zoom: 15
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color( 0x00000000 ), // Hace transparente el AppBar
        elevation: 0,
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: ( GoogleMapController controller ) {
          _controller.complete( controller );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: const Text( 'To Bern Cathedral' ),
        icon: const Icon( Icons.church ),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera( CameraUpdate.newCameraPosition( _kCatedral ) );
  }
}