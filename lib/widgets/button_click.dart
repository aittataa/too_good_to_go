import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class ButtonClick extends StatelessWidget {
  final String title;
  final Color textColor;
  final Color backColor;
  final Function onPressed;
  ButtonClick({this.title, this.textColor, this.backColor, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        //elevation: 10,
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        backgroundColor: backColor,
        //shadowColor: Colors.red,
        //onSurface: Colors.blue,
        primary: AppTheme.blackBackColor.withOpacity(0.25),
      ),
      child: Text(
        "$title",
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
