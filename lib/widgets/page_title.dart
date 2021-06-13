import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class PageTitle extends StatelessWidget {
  final String title;
  const PageTitle({this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Text(
        "$title",
        style: TextStyle(
          color: AppTheme.blackTextColor,
          fontWeight: FontWeight.w900,
          fontSize: 32,
        ),
      ),
    );
  }
}
