import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/constant/shared_functions.dart';
import 'package:too_good_to_go/widgets/browse_button.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';
import 'package:too_good_to_go/widgets/expanded_map.dart';
import 'package:too_good_to_go/widgets/filter_page.dart';
import 'package:too_good_to_go/widgets/listview_item.dart';
import 'package:too_good_to_go/widgets/locate_area.dart';
import 'package:too_good_to_go/widgets/location_item.dart';
import 'package:too_good_to_go/widgets/page_title.dart';
import 'package:too_good_to_go/widgets/search_bar.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class BrowsePage extends StatefulWidget {
  @override
  _BrowsePageState createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
  LocationData locationData;
  LatLng position;

  int pageIndex;
  PageController pageController;
  get getLocation async {
    locationData = await Location().getLocation();
    position = LatLng(locationData.latitude, locationData.longitude);
  }

  @override
  void initState() {
    super.initState();
    getLocation;
    pageIndex = 0;
    pageController = PageController(initialPage: pageIndex);
  }

  bool onSearchTap = false;
  bool onItemTap = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: pageController,
            children: [
              SizedBox(),
              Expanded(
                child: ExpandedMap(position: position),
              ),
            ],
          ),
        ),
        SafeArea(
          child: Column(
            children: [
              PageTitle(
                title: Messages.LABEL_BROWSE,
              ),
              LocationItem(
                onPressed: () => SharedFunctions.loadPage(
                  context,
                  screen: LocateArea(position: position),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: AppTheme.blackBackColor.withOpacity(.15),
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
                  physics: onSearchTap ? NeverScrollableScrollPhysics() : BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  children: [
                    ListViewItem(
                      onTap: () => SharedFunctions.loadPage(context, screen: FilterPage()),
                      child: Icon(
                        CupertinoIcons.slider_horizontal_3,
                        color: AppTheme.mainColor,
                      ),
                    ),
                    ListViewItem(
                      onTap: () {
                        setState(() => onSearchTap = true);
                      },
                      child: SearchBar(
                        state: onSearchTap,
                        onTap: () {
                          setState(() => onSearchTap = false);
                        },
                      ),
                    ),

                    ///
                    ListViewItem(
                      color: onItemTap ? AppTheme.lightMainColor : AppTheme.whiteBackColor,
                      onTap: () {
                        setState(() {
                          onItemTap = !onItemTap;
                        });
                      },
                      child: Wrap(
                        children: [
                          Text(
                            onItemTap ? "Hide sold-out" : "Try: Hide sold-out",
                            style: TextStyle(
                              color: onItemTap ? AppTheme.whiteTextColor : AppTheme.mainColor,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          if (onItemTap)
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  onItemTap = false;
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Icon(
                                  CupertinoIcons.clear_thick,
                                  size: 15,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    ListViewItem(
                      color: onItemTap ? AppTheme.lightMainColor : AppTheme.whiteBackColor,
                      onTap: () {
                        setState(() {
                          onItemTap = !onItemTap;
                        });
                      },
                      child: Wrap(
                        children: [
                          Text(
                            onItemTap ? "Meals" : "Try: Meals",
                            style: TextStyle(
                              color: onItemTap ? AppTheme.whiteTextColor : AppTheme.mainColor,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          if (onItemTap)
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  onItemTap = false;
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Icon(
                                  CupertinoIcons.clear_thick,
                                  size: 15,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    /*
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
                    ListViewItem(
                      child: Text(
                        "Clear all",
                        style: TextStyle(
                          color: AppTheme.mainColor,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    */
                  ],
                ),
              ),
              Expanded(
                child: pageIndex == 0
                    ? Column(
                        children: [
                          ExpandedLogo(),
                          ListTile(
                            title: TitleText(title: Messages.BROWSE_TITLE_1),
                          ),
                          ListTile(
                            subtitle: SubtitleText(subtitle: Messages.BROWSE_SUBTITLE_1),
                          ),
                          ListTile(
                            title: ButtonClick(
                              onPressed: () => SharedFunctions.loadPage(
                                context,
                                screen: LocateArea(position: position),
                              ),
                              title: Messages.CHANGE_LOCATION_BUTTON,
                              textColor: AppTheme.whiteTextColor,
                              backColor: AppTheme.mainColor,
                            ),
                          ),
                        ],
                      )
                    : SpeedDial(
                        visible: true,
                        backgroundColor: AppTheme.whiteBackColor,
                        tooltip: "Change Location",
                        marginBottom: 25,
                        marginEnd: 25,
                        child: Icon(
                          Icons.my_location,
                          color: AppTheme.lightMainColor,
                        ),
                      ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
