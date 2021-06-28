import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class TitleText extends StatelessWidget {
  final String title;
  final Color color;
  final TextAlign textAlign;
  const TitleText({
    this.title,
    this.color,
    this.textAlign = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    // return AutoSizeText(
    //   "$title",
    //   minFontSize: 15,
    //   maxFontSize: 18,
    //   textAlign: textAlign,
    //   style: TextStyle(
    //     color: color ?? AppTheme.blackTextColor,
    //     fontWeight: FontWeight.w900,
    //   ),
    // );
    return Text(
      "$title",
      textAlign: textAlign,
      softWrap: false,
      style: TextStyle(
        color: color ?? AppTheme.blackTextColor,
        fontWeight: FontWeight.w900,
        fontSize: 18,
      ),
    );
  }
}
