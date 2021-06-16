import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class HelpItem extends StatelessWidget {
  final IconData icon;
  final String title;
  const HelpItem({this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppTheme.whiteBackColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: AppTheme.darkColor.withOpacity(.15),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(
          icon,
          size: 30,
          color: AppTheme.mainColor,
        ),
        title: Text(
          "$title",
          style: TextStyle(
            color: AppTheme.blackTextColor.withOpacity(0.75),
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
