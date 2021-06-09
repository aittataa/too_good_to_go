import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:too_good_to_go/widgets/locate_area.dart';

class SharedFunctions {
  static get getLocation async {
    return await Location().getLocation();
  }

  static loadMaps(context, {LatLng position}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      enableDrag: false,
      builder: (context) {
        return LocateArea(position: position);
      },
    );
  }
}
