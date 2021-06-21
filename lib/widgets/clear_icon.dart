import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class ClearIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5),
      child: Icon(
        Icons.clear,
        color: AppTheme.blackIconColor.withOpacity(.5),
        size: 16,
      ),
    );
  }
}
