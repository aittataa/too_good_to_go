import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ExpandedMap extends StatelessWidget {
  final LatLng position;
  const ExpandedMap({
    this.position,
  });

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      myLocationEnabled: true,
      mapType: MapType.normal,
      initialCameraPosition: CameraPosition(
        target: position,
        zoom: 10,
      ),
    );
  }
}