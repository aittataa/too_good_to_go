import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class LocateArea extends StatelessWidget {
  final LatLng position;
  const LocateArea({this.position});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            tileColor: Colors.white,
            contentPadding: EdgeInsets.zero,
            minVerticalPadding: 0,
            minLeadingWidth: 0,
            horizontalTitleGap: 0,
            title: Padding(
              padding: EdgeInsets.all(25),
              child: Text(
                "Choose Location",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.clear_thick),
              ),
            ),
          ),
          Expanded(
            child: GoogleMap(
              myLocationEnabled: true,
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                target: position,
                zoom: 10,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search for city",
                      hintStyle: TextStyle(
                        color: Colors.black45,
                      ),
                      icon: Icon(
                        CupertinoIcons.search,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: TextButton(
                    onPressed: null,
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                      primary: Colors.black12,
                    ),
                    child: Text(
                      "Use my current location",
                      style: TextStyle(
                        color: AppTheme.mainColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: TextButton(
                    onPressed: null,
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                      primary: Colors.black12,
                      backgroundColor: AppTheme.mainColor,
                    ),
                    child: Text(
                      "Apply",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
