import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/constant/shared_functions.dart';
import 'package:too_good_to_go/pages/discover_items/first_bar.dart';
import 'package:too_good_to_go/pages/discover_items/second_bar.dart';
import 'package:too_good_to_go/pages/discover_items/third_bar.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/divider_line.dart';
import 'package:too_good_to_go/widgets/locate_area.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

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
            FirstBar(title: "Save before it's too late"),
            SecondBar(title: "Groceries"),
            ThirdBar(title: "Supermarkets"),
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
