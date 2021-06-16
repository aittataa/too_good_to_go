import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/expanded_map.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';

class LocateArea extends StatelessWidget {
  final LatLng position;
  const LocateArea({this.position});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.whiteBackColor,
      padding: EdgeInsets.only(top: 25),
      child: Stack(
        children: [
          ExpandedMap(position: position),
          Column(
            children: [
              Container(
                color: AppTheme.whiteBackColor,
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  horizontalTitleGap: 0,
                  minVerticalPadding: 0,
                  minLeadingWidth: 0,
                  title: SubtitleText(
                    subtitle: Messages.LOCATE_AREA_TITLE,
                  ),
                  trailing: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(CupertinoIcons.clear_thick),
                    ),
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppTheme.whiteBackColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: AppTheme.blackBackColor.withOpacity(.15),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: TextField(
                        cursorColor: AppTheme.mainColor,
                        style: TextStyle(
                          color: AppTheme.blackTextColor.withOpacity(.5),
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: Messages.LOCATE_AREA_HINT_SEARCH,
                          hintStyle: TextStyle(
                            color: AppTheme.blackTextColor.withOpacity(.25),
                          ),
                          icon: Icon(
                            CupertinoIcons.search,
                            color: AppTheme.blackIconColor.withOpacity(.5),
                          ),
                        ),
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
    );
  }
}
