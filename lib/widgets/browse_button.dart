import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class BrowseButton extends StatelessWidget {
  final String title;
  final bool state;
  final Function onPressed;
  const BrowseButton({
    this.title,
    this.state,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      elevation: 0,
      highlightElevation: 0,
      color: state ? AppTheme.mainColor : AppTheme.transparentColor,
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Text(
        "$title",
        style: TextStyle(
          color: state ? AppTheme.whiteTextColor : AppTheme.mainColor,
          fontWeight: FontWeight.w900,
          fontSize: 17.5,
        ),
      ),
    );
  }
}
