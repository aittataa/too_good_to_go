import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class LocationItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Icon(
            CupertinoIcons.location_solid,
            color: AppTheme.mainColor,
            size: 16,
          ),
          Text(
            "Mountain View",
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
            "within 14 mile",
            style: TextStyle(
              color: AppTheme.mainColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      trailing: TextButton(
        onPressed: null,
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          primary: Colors.white,
          backgroundColor: Colors.black12,
          onSurface: Colors.grey,
        ),
        child: Text(
          "Change",
          style: TextStyle(
            color: AppTheme.mainColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
