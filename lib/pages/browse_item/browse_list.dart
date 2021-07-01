import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/constant/shared_functions.dart';
import 'package:too_good_to_go/pages/browse_item/display_bar.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';
import 'package:too_good_to_go/widgets/locate_area.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class BrowseList extends StatelessWidget {
  final bool state;
  final LatLng position;
  const BrowseList({this.position, this.state});

  @override
  Widget build(BuildContext context) {
    if (state) {
      return DisplayBar(title: "Nearby");
    } else {
      return Column(
        children: [
          ExpandedLogo(),
          ListTile(
            title: TitleText(title: Messages.BROWSE_TITLE_1),
          ),
          ListTile(
            subtitle: SubtitleText(
              subtitle: Messages.BROWSE_SUBTITLE_1,
              color: AppTheme.blackTextColor.withOpacity(.75),
            ),
          ),
          ListTile(
            title: ButtonClick(
              onPressed: () => SharedFunctions.loadPage(context, screen: LocateArea(position: position)),
              title: Messages.CHANGE_LOCATION_BUTTON,
              textColor: AppTheme.whiteTextColor,
              backColor: AppTheme.mainColor,
            ),
          ),
        ],
      );
    }
  }
}
