import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';

class LocationItem extends StatelessWidget {
  final Function onPressed;
  const LocationItem({this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      horizontalTitleGap: 0,
      minLeadingWidth: 0,
      minVerticalPadding: 0,
      title: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Icon(
            CupertinoIcons.location_solid,
            color: AppTheme.mainColor,
            size: 16,
          ),
          Text(
            Messages.LOCATION_ITEM_TITLE,
            style: TextStyle(
              color: AppTheme.mainColor,
              fontWeight: FontWeight.w900,
              fontSize: 18,
            ),
          ),
        ],
      ),
      subtitle: Wrap(
        children: [
          Icon(
            CupertinoIcons.location_solid,
            color: Colors.transparent,
            size: 16,
          ),
          Text(
            Messages.LOCATION_ITEM_SUBTITLE,
            style: TextStyle(
              color: AppTheme.mainColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      trailing: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          primary: Colors.white,
          backgroundColor: Colors.black12,
          onSurface: Colors.grey,
        ),
        child: Text(
          Messages.LOCATION_ITEM_BUTTON,
          style: TextStyle(
            color: AppTheme.mainColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
