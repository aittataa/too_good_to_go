import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
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
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  title: TitleText(title: Messages.DISCOVER_TITLE_1),
                ),
                ListTile(
                  title: SubtitleText(
                    subtitle: Messages.DISCOVER_SUBTITLE_1,
                    color: AppTheme.blackTextColor.withOpacity(.75),
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
                    color: AppTheme.mainColor.withOpacity(0.5),
                    value: 10,
                  ),
                ),
                Image.asset(
                  Messages.INSTAGRAM_ICON,
                  color: AppTheme.mainColor,
                  width: 45,
                  height: 45,
                ),
                Expanded(
                  child: DividerLine(
                    color: AppTheme.mainColor.withOpacity(0.5),
                    value: 10,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            //dense: true,
            title: TitleText(title: Messages.DISCOVER_TITLE_2),
          ),
          ListTile(
            //dense: true,
            title: SubtitleText(
              subtitle: Messages.DISCOVER_SUBTITLE_2,
              color: AppTheme.blackTextColor.withOpacity(.75),
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
