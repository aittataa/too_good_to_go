import 'package:flutter/material.dart';

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
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        backgroundColor: backColor,
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
