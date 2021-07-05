import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/constant/shared_functions.dart';
import 'package:too_good_to_go/pages/discover_items/discover_body.dart';
import 'package:too_good_to_go/widgets/locate_area.dart';
import 'package:too_good_to_go/widgets/location_item.dart';
import 'package:too_good_to_go/widgets/page_title.dart';

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  LatLng position;
  get getPosition async {
    LocationData location = await Location().getLocation();
    position = LatLng(location.latitude, location.longitude);
  }

  @override
  void initState() {
    super.initState();
    getPosition;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          PageTitle(title: Messages.LABEL_DISCOVER),
          LocationItem(
            onPressed: () => SharedFunctions.loadPage(
              context,
              screen: LocateArea(position: position),
            ),
          ),
          DiscoverBody(position: position, state: true),
        ],
      ),
    );
  }
}
