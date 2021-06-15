import 'package:flutter/material.dart';

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
        color: Colors.black,
        fontWeight: FontWeight.w900,
        fontSize: 20,
      ),
    );
  }
}
