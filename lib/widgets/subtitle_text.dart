import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class SubtitleText extends StatelessWidget {
  final String subtitle;
  final Color color;
  final TextAlign textAlign;
  const SubtitleText({
    this.subtitle,
    this.color,
    this.textAlign = TextAlign.center,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      "$subtitle",
      textAlign: textAlign,
      style: TextStyle(
        color: color ?? AppTheme.blackTextColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
