import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class SocialConnection extends StatelessWidget {
  final String image;
  final Color color;
  final Function onPressed;
  const SocialConnection({
    this.image,
    this.color,
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        elevation: 2,
        backgroundColor: AppTheme.whiteBackColor,
        shape: CircleBorder(),
        padding: EdgeInsets.all(10),
      ),
      child: Image.asset(
        image,
        color: color,
        width: 30,
        height: 30,
      ),
    );
  }
}
