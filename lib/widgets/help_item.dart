import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class HelpItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;
  const HelpItem({this.icon, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppTheme.whiteBackColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: AppTheme.blackShadowColor.withOpacity(.15),
            blurRadius: 25,
            spreadRadius: 0,
          ),
        ],
      ),
      child: ListTile(
        onTap: onTap,
        dense: true,
        minLeadingWidth: 0,
        leading: Icon(
          icon,
          size: 30,
          color: AppTheme.mainColor,
        ),
        title: TitleText(
          title: "$title",
          color: AppTheme.blackTextColor.withOpacity(0.75),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
