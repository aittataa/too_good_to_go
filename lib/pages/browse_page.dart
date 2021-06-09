import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
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
    getLocation;
    super.initState();
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
                  children: [],
                ),
              ),
              Expanded(
                child: position == null
                    ? Center(child: CircularProgressIndicator())
                    : GoogleMap(
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
              LocationItem(),
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
                          // pageController.animateToPage(
                          //   pageIndex,
                          //   duration: Duration(milliseconds: 1000),
                          //   curve: Curves.linearToEaseOut,
                          // );
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
                          // pageController.animateToPage(
                          //   pageIndex,
                          //   duration: Duration(milliseconds: 1000),
                          //   curve: Curves.linearToEaseOut,
                          // );
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
