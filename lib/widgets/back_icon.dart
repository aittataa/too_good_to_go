import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class BackIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => {
        FocusScope.of(context).unfocus(),
        Navigator.pop(context),
      },
      icon: Icon(
        CupertinoIcons.left_chevron,
        color: AppTheme.whiteIconColor,
      ),
    );
  }
}
