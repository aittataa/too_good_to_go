import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Function onTap;
  const ProfileItem({this.icon, this.label, this.value = "", this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      dense: true,
      horizontalTitleGap: 0,
      tileColor: AppTheme.whiteBackColor,
      leading: Icon(
        icon,
        color: AppTheme.lightMainColor,
      ),
      title: Wrap(
        alignment: WrapAlignment.spaceBetween,
        children: [
          Text(
            "$label",
            style: TextStyle(
              color: AppTheme.blackTextColor.withOpacity(0.75),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "$value",
            textAlign: TextAlign.end,
            style: TextStyle(
              color: AppTheme.blackTextColor.withOpacity(0.65),
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
      trailing: Icon(
        CupertinoIcons.right_chevron,
        color: AppTheme.blackIconColor.withOpacity(0.75),
      ),
    );
  }
}
