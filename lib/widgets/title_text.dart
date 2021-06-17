import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class TitleText extends StatelessWidget {
  final String title;
  final Color color;
  final TextAlign textAlign;
  const TitleText({
    this.title,
    this.color = AppTheme.blackTextColor,
    this.textAlign = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title",
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w900,
        fontSize: 20,
      ),
    );
  }
}
