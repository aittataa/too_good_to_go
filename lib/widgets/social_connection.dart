import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class SocialConnection extends StatelessWidget {
  final String image;
  final Color color;
  const SocialConnection({
    this.image,
    this.color,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      elevation: 1,
      highlightElevation: 1,
      color: AppTheme.whiteBackColor,
      splashColor: AppTheme.transparentColor,
      shape: CircleBorder(),
      padding: EdgeInsets.all(10),
      child: Image.asset(
        image,
        width: 30,
        height: 30,
        color: color,
      ),
    );
  }
}
