import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/constant/shared_functions.dart';
import 'package:too_good_to_go/widgets/browse_button.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';
import 'package:too_good_to_go/widgets/expanded_map.dart';
import 'package:too_good_to_go/widgets/listview_item.dart';
import 'package:too_good_to_go/widgets/location_item.dart';
import 'package:too_good_to_go/widgets/page_title.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

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
                    Expanded(child: SizedBox()),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          ExpandedLogo(),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ListTile(
                                  title: TitleText(title: Messages.BROWSE_TITLE_1),
                                ),
                                ListTile(
                                  title: SubtitleText(subtitle: Messages.BROWSE_SUBTITLE_1),
                                ),
                                ListTile(
                                  title: ButtonClick(
                                    title: Messages.CHANGE_LOCATION_BUTTON.toUpperCase(),
                                    textColor: AppTheme.whiteTextColor,
                                    backColor: AppTheme.mainColor,
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
                child: ExpandedMap(position: position),
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
                    Expanded(
                      child: BrowseButton(
                        title: Messages.BROWSE_LIST_BUTTON,
                        state: pageIndex == 0,
                        onPressed: () {
                          setState(() {
                            pageIndex = 0;
                            pageController.jumpToPage(pageIndex);
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: BrowseButton(
                        title: Messages.BROWSE_MAP_BUTTON,
                        state: pageIndex == 1,
                        onPressed: () {
                          setState(() {
                            pageIndex = 1;
                            pageController.jumpToPage(pageIndex);
                          });
                        },
                      ),
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
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    ListViewItem(
                      child: Text(
                        "Try: Meals",
                        style: TextStyle(
                          color: AppTheme.mainColor,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    ListViewItem(
                      child: Text(
                        "Try: Bread & Pastries",
                        style: TextStyle(
                          color: AppTheme.mainColor,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    ListViewItem(
                      child: Text(
                        "Try: Vegetarian",
                        style: TextStyle(
                          color: AppTheme.mainColor,
                          fontWeight: FontWeight.w900,
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
