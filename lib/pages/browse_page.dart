import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/constant/shared_functions.dart';
import 'package:too_good_to_go/widgets/browse_button.dart';
import 'package:too_good_to_go/widgets/listview_item.dart';
import 'package:too_good_to_go/widgets/location_item.dart';
import 'package:too_good_to_go/widgets/page_title.dart';

class BrowsePage extends StatefulWidget {
  @override
  _BrowsePageState createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
  Location location;
  LocationData locationData;
  GoogleMapController mapController;
  int pageIndex;
  PageController pageController;
  LatLng position;
  @override
  void initState() {
    super.initState();
    getLocation;

    pageIndex = 0;
    pageController = PageController(initialPage: pageIndex);
  }

  get getLocation async {
    locationData = await Location().getLocation();
    position = LatLng(locationData.latitude, locationData.longitude);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: pageController,
            children: [
              Container(
                child: Column(
                  children: [
                    Expanded(child: Container(height: 1)),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Expanded(child: Image.asset(Messages.LOGO_ICON)),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ListTile(
                                  title: Text(
                                    Messages.BROWSE_TITLE_1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    Messages.BROWSE_SUBTITLE_1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  title: TextButton(
                                    onPressed: () {
                                      print(Messages.APP_TITLE);
                                    },
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.all(15),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50)),
                                      primary: Colors.black12,
                                      backgroundColor: AppTheme.mainColor,
                                    ),
                                    child: Text(
                                      Messages.CHANGE_LOCATION_BUTTON.toUpperCase(),
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
                    ),
                  ],
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
            ],
          ),
        ),
        SafeArea(
          child: Column(
            children: [
              PageTitle(title: Messages.LABEL_BROWSE),
              LocationItem(
                onPressed: () => SharedFunctions.loadMaps(context, position: position),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    BrowseButton(
                      title: Messages.BROWSE_LIST_BUTTON,
                      state: pageIndex == 0,
                      onPressed: () {
                        setState(() {
                          pageIndex = 0;
                          pageController.jumpToPage(pageIndex);
                        });
                      },
                    ),
                    BrowseButton(
                      title: Messages.BROWSE_MAP_BUTTON,
                      state: pageIndex == 1,
                      onPressed: () {
                        setState(() {
                          pageIndex = 1;
                          pageController.jumpToPage(pageIndex);
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  children: [
                    ListViewItem(
                      child: Icon(
                        CupertinoIcons.slider_horizontal_3,
                        color: AppTheme.mainColor,
                        size: 27,
                      ),
                    ),
                    ListViewItem(
                      child: Icon(
                        CupertinoIcons.search,
                        color: AppTheme.mainColor,
                        size: 27,
                      ),
                    ),
                    ListViewItem(
                      child: Text(
                        "Try: Hide sold-out",
                        style: TextStyle(
                          color: AppTheme.mainColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListViewItem(
                      child: Text(
                        "Try: Meals",
                        style: TextStyle(
                          color: AppTheme.mainColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListViewItem(
                      child: Text(
                        "Try: Bread & Pastries",
                        style: TextStyle(
                          color: AppTheme.mainColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListViewItem(
                      child: Text(
                        "Try: Vegetarian",
                        style: TextStyle(
                          color: AppTheme.mainColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
