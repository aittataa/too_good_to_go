import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:too_good_to_go/widgets/locate_area.dart';
import 'package:url_launcher/url_launcher.dart';

class SharedFunctions {
  ///Web Launcher
  static launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw Exception("Couldn't Launch $url");
    }
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
