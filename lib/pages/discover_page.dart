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
import 'package:too_good_to_go/display_item/first_shape.dart';
import 'package:too_good_to_go/display_item/second_shape.dart';
import 'package:too_good_to_go/display_item/third_shape.dart';
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
            //FirstBar(title: "Save before it's too late"),
            //SecondBar(title: "Groceries"),
            ThirdBar(title: "Pick up now"),
            //SecondBar(title: "Nearby"),
            //SecondBar(title: "Vegetarian Surprise Bags"),
            //SecondBar(title: "Pick up for dinner"),
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

class FirstBar extends StatelessWidget {
  final String title;
  const FirstBar({this.title});
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
              return FirstShape();
            },
          ),
        ),
      ),
    );
  }
}

class SecondBar extends StatelessWidget {
  final String title;
  const SecondBar({this.title});
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
              return SecondShape();
            },
          ),
        ),
      ),
    );
  }
}

class ThirdBar extends StatelessWidget {
  final String title;
  const ThirdBar({this.title});
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
              return ThirdShape();
            },
          ),
        ),
      ),
    );
  }
}
