import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;
  const MenuItem({this.icon, this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      tileColor: AppTheme.whiteBackColor,
      horizontalTitleGap: 0,
      leading: Icon(
        icon,
        color: AppTheme.blackIconColor.withOpacity(.64),
      ),
      title: Text(
        "$text",
        style: TextStyle(
          color: AppTheme.blackTextColor.withOpacity(.75),
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Icon(
        CupertinoIcons.right_chevron,
        color: AppTheme.blackIconColor.withOpacity(.64),
      ),
    );
  }
}
