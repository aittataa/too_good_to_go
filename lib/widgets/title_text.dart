import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class TitleText extends StatelessWidget {
  final String title;
  final TextAlign textAlign;
  const TitleText({this.title, this.textAlign = TextAlign.center});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title",
      textAlign: textAlign,
      style: TextStyle(
        color: AppTheme.blackTextColor,
        fontWeight: FontWeight.w900,
        fontSize: 20,
      ),
    );
  }
}
