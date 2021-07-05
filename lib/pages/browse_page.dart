import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/constant/shared_functions.dart';
import 'package:too_good_to_go/pages/browse_items/browse_list.dart';
import 'package:too_good_to_go/pages/browse_items/speed_button.dart';
import 'package:too_good_to_go/widgets/browse_button.dart';
import 'package:too_good_to_go/widgets/clear_icon.dart';
import 'package:too_good_to_go/widgets/expanded_map.dart';
import 'package:too_good_to_go/widgets/filter_page.dart';
import 'package:too_good_to_go/widgets/listview_item.dart';
import 'package:too_good_to_go/widgets/locate_area.dart';
import 'package:too_good_to_go/widgets/location_item.dart';
import 'package:too_good_to_go/widgets/page_title.dart';
import 'package:too_good_to_go/widgets/search_bar.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';

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

  get animateToPage {
    pageController.jumpToPage(pageIndex);
    //pageController.animateToPage(
    //  pageIndex,
    //  duration: Constant.duration,
    //  curve: Constant.curve,
    //);
  }

  @override
  void initState() {
    super.initState();
    getLocation;
    pageIndex = 0;
    pageController = PageController(initialPage: pageIndex);
  }

  bool onSearchTap = false;
  bool onItemTap1 = false;
  bool onItemTap2 = false;
  bool onItemTap3 = false;
  bool onItemTap4 = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Expanded(
          child: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: pageController,
            children: [
              SizedBox(),
              ExpandedMap(position: position),
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
                            animateToPage;
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
                            animateToPage;
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
                  padding: EdgeInsets.all(5),
                  children: [
                    /// TODO : Filter Option
                    ListViewItem(
                      onTap: () => SharedFunctions.loadPage(context, screen: FilterPage()),
                      color: AppTheme.whiteBackColor,
                      child: Icon(
                        CupertinoIcons.slider_horizontal_3,
                        color: AppTheme.mainColor,
                      ),
                    ),
                    ListViewItem(
                      onTap: () => {setState(() => onSearchTap = true)},
                      color: AppTheme.whiteBackColor,
                      child: SearchBar(
                        state: onSearchTap,
                        onTap: () => {setState(() => onSearchTap = false)},
                      ),
                    ),

                    /// TODO : Other Option
                    ListViewItem(
                      color: onItemTap1 ? AppTheme.lightMainColor : AppTheme.whiteBackColor,
                      onTap: () {
                        setState(() {
                          onItemTap1 = !onItemTap1;
                        });
                      },
                      child: Wrap(
                        children: [
                          SubtitleText(
                            subtitle: onItemTap1 ? "Hide sold-out" : "Try: Hide sold-out",
                            color: onItemTap1 ? AppTheme.whiteTextColor : AppTheme.mainColor,
                          ),
                          if (onItemTap1) ClearIcon(),
                        ],
                      ),
                    ),
                    ListViewItem(
                      color: onItemTap2 ? AppTheme.lightMainColor : AppTheme.whiteBackColor,
                      onTap: () {
                        setState(() {
                          onItemTap2 = !onItemTap2;
                        });
                      },
                      child: Wrap(
                        children: [
                          SubtitleText(
                            subtitle: onItemTap2 ? "Meals" : "Try: Meals",
                            color: onItemTap2 ? AppTheme.whiteTextColor : AppTheme.mainColor,
                          ),
                          if (onItemTap2) ClearIcon(),
                        ],
                      ),
                    ),
                    ListViewItem(
                      color: onItemTap3 ? AppTheme.lightMainColor : AppTheme.whiteBackColor,
                      onTap: () {
                        setState(() {
                          onItemTap3 = !onItemTap3;
                        });
                      },
                      child: Wrap(
                        children: [
                          SubtitleText(
                            subtitle: onItemTap3 ? "Bread & Pastries" : "Try: Bread & Pastries",
                            color: onItemTap3 ? AppTheme.whiteTextColor : AppTheme.mainColor,
                          ),
                          if (onItemTap3) ClearIcon(),
                        ],
                      ),
                    ),
                    ListViewItem(
                      color: onItemTap4 ? AppTheme.lightMainColor : AppTheme.whiteBackColor,
                      onTap: () {
                        setState(() {
                          onItemTap4 = !onItemTap4;
                        });
                      },
                      child: Wrap(
                        children: [
                          SubtitleText(
                            subtitle: onItemTap4 ? "Vegetarian" : "Try: Vegetarian",
                            color: onItemTap4 ? AppTheme.whiteTextColor : AppTheme.mainColor,
                          ),
                          if (onItemTap4) ClearIcon(),
                        ],
                      ),
                    ),

                    /// TODO : Clear Option
                    if (onItemTap1 || onItemTap2 || onItemTap3 || onItemTap4)
                      ListViewItem(
                        color: AppTheme.whiteBackColor,
                        onTap: () {
                          setState(() {
                            onItemTap1 = false;
                            onItemTap2 = false;
                            onItemTap3 = false;
                            onItemTap4 = false;
                          });
                        },
                        child: Icon(
                          CupertinoIcons.repeat,
                          color: AppTheme.lightMainColor,
                        ),
                      ),
                  ],
                ),
              ),
              if (pageIndex == 0)
                Expanded(child: BrowseList(position: position, state: true))
              else
                Expanded(
                  child: SpeedButton(),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
