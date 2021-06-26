import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/expanded_map.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/text_box.dart';

class LocateArea extends StatelessWidget {
  final LatLng position;
  const LocateArea({this.position});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppTheme.whiteBackColor,
        padding: EdgeInsets.only(top: 25),
        child: Stack(
          children: [
            ExpandedMap(position: position),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: AppTheme.whiteBackColor,
                  child: ListTile(
                    tileColor: AppTheme.whiteBackColor,
                    contentPadding: EdgeInsets.zero,
                    title: SubtitleText(subtitle: Messages.LOCATE_AREA_TITLE),
                    trailing: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        CupertinoIcons.clear_thick,
                        color: AppTheme.blackIconColor.withOpacity(.5),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: AppTheme.whiteBackColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: TextBox(
                          icon: CupertinoIcons.search,
                          hint: Messages.LOCATE_AREA_HINT_SEARCH,
                        ),
                      ),
                      ListTile(
                        title: ButtonClick(
                          title: Messages.LOCATE_LOCATION_BUTTON,
                          textColor: AppTheme.mainColor,
                        ),
                      ),
                      ListTile(
                        title: ButtonClick(
                          title: Messages.LOCATE_APPLY_BUTTON,
                          textColor: AppTheme.whiteTextColor,
                          backColor: AppTheme.mainColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
