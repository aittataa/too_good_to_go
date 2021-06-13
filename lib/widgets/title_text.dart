import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String title;
  const TitleText({this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w900,
        fontSize: 20,
      ),
    );
  }
}
