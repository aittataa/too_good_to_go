import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/constant/shared_functions.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/divider_line.dart';
import 'package:too_good_to_go/widgets/locate_area.dart';
import 'package:too_good_to_go/widgets/location_item.dart';
import 'package:too_good_to_go/widgets/page_title.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

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

class DiscoverBody extends StatelessWidget {
  final LatLng position;
  final bool state;
  const DiscoverBody({this.position, this.state});
  @override
  Widget build(BuildContext context) {
    if (state) {
      return Expanded(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SaveItem(),
            DisplayItem(title: "Groceries"),
            DisplayItem(title: "Pick up now"),
            DisplayItem(title: "Nearby"),
            DisplayItem(title: "Vegetarian Surprise Bags"),
            DisplayItem(title: "Pick up for dinner"),
          ],
        ),
      );
    } else {
      return Expanded(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    title: TitleText(title: Messages.DISCOVER_TITLE_1),
                    subtitle: Padding(
                      padding: EdgeInsets.all(5),
                      child: SubtitleText(
                        subtitle: Messages.DISCOVER_SUBTITLE_1,
                        color: AppTheme.blackTextColor.withOpacity(.75),
                      ),
                    ),
                  ),
                  ListTile(
                    title: ButtonClick(
                      onPressed: () => SharedFunctions.loadPage(
                        context,
                        screen: LocateArea(position: position),
                      ),
                      title: Messages.CHANGE_LOCATION_BUTTON,
                      textColor: AppTheme.mainColor,
                      backColor: AppTheme.blackBackColor.withOpacity(0.15),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Row(
                children: [
                  Expanded(
                    child: DividerLine(
                      height: 1,
                      color: AppTheme.mainColor.withOpacity(0.5),
                      value: 10,
                    ),
                  ),
                  Image.asset(
                    Messages.INSTAGRAM_ICON,
                    color: AppTheme.mainColor,
                    width: 50,
                    height: 50,
                  ),
                  Expanded(
                    child: DividerLine(
                      height: 1,
                      color: AppTheme.mainColor.withOpacity(0.5),
                      value: 10,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: TitleText(title: Messages.DISCOVER_TITLE_2),
              subtitle: Padding(
                padding: EdgeInsets.all(5),
                child: SubtitleText(
                  subtitle: Messages.DISCOVER_SUBTITLE_2,
                  color: AppTheme.blackTextColor.withOpacity(.75),
                ),
              ),
            ),
            ListTile(
              title: ButtonClick(
                onPressed: () => SharedFunctions.launchURL(Messages.INSTAGRAM_LINK),
                title: Messages.FOLLOW_INSTAGRAM_BUTTON,
                textColor: AppTheme.whiteTextColor,
                backColor: AppTheme.mainColor,
              ),
            ),
          ],
        ),
      );
    }
  }
}

class SaveItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListTile(
        dense: true,
        contentPadding: EdgeInsets.zero,
        title: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: TitleText(
                  title: "Save before it's too late",
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: AppTheme.lightMainColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.chevron_right,
                  color: AppTheme.whiteIconColor,
                ),
              ),
            ],
          ),
        ),
        subtitle: Container(
          // height: Constant.screenHeight * .4,
          height: 350,
          child: GridView.builder(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(10),
            scrollDirection: Axis.horizontal,
            gridDelegate: Constant.gridDelegate(
              crossAxisCount: 3,
              childAspectRatio: 0.25,
            ),
            itemCount: Constant.itemCount,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: AppTheme.whiteBackColor,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: AppTheme.blackShadowColor.withOpacity(.10),
                      blurRadius: 10,
                      spreadRadius: -1,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              alignment: Alignment.bottomRight,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(Messages.APP_ICON_ROUND),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppTheme.mainColor,
                                ),
                                child: Text(
                                  "5+",
                                  style: TextStyle(
                                    color: AppTheme.whiteTextColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "1.0 mi",
                            softWrap: false,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: AppTheme.blackTextColor.withOpacity(.5),
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TitleText(
                              title: "Brooklyn Diamond Coffee - With Cream",
                              textAlign: TextAlign.start,
                            ),
                            SubtitleText(
                              subtitle: "Today 21:30 - 21:55",
                              color: AppTheme.blackTextColor.withOpacity(.75),
                              textAlign: TextAlign.start,
                            ),
                            TitleText(
                              title: "\$4.99",
                              color: AppTheme.mainColor,
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        CupertinoIcons.right_chevron,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class DisplayItem extends StatelessWidget {
  final String title;
  const DisplayItem({this.title});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListTile(
        dense: true,
        contentPadding: EdgeInsets.zero,
        title: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: TitleText(
                  title: "$title",
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: AppTheme.lightMainColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.chevron_right,
                  color: AppTheme.whiteIconColor,
                ),
              ),
            ],
          ),
        ),
        subtitle: Container(
          height: 300,
          child: PageView.builder(
            controller: PageController(viewportFraction: .9),
            physics: BouncingScrollPhysics(),
            itemCount: Constant.itemCount,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                decoration: BoxDecoration(
                  color: AppTheme.whiteBackColor,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: AppTheme.blackShadowColor.withOpacity(.15),
                      blurRadius: 10,
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(Messages.APP_ICON),
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppTheme.blackBackColor.withOpacity(.1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ListTile(
                                dense: true,
                                contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                leading: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: AppTheme.blackBackColor.withOpacity(.25),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "Check back later",
                                    style: TextStyle(
                                      color: AppTheme.whiteTextColor,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                                trailing: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppTheme.blackBackColor.withOpacity(.25),
                                  ),
                                  child: Icon(
                                    CupertinoIcons.heart,
                                    color: AppTheme.whiteIconColor.withOpacity(.75),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(2.5),
                                            decoration: BoxDecoration(
                                              color: AppTheme.lightMainColor,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Container(
                                              width: 75,
                                              height: 75,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(Messages.APP_ICON),
                                                ),
                                              ),
                                              child: Icon(CupertinoIcons.heart, color: AppTheme.transparentColor),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                            decoration: BoxDecoration(
                                              color: AppTheme.mainColor,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: TitleText(
                                              title: "\$3.99",
                                              color: AppTheme.whiteTextColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      title: TitleText(
                        title: "Fresh Central Grocery",
                        color: AppTheme.blackTextColor,
                        textAlign: TextAlign.start,
                      ),
                      subtitle: SubtitleText(
                        subtitle: "Today 17:00 - 02:00 | 3.2 mi",
                        color: AppTheme.blackTextColor.withOpacity(.5),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
