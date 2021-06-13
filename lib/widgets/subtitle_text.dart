import 'package:flutter/material.dart';

class SubtitleText extends StatelessWidget {
  final String subtitle;
  final Color color;
  const SubtitleText({this.subtitle, this.color = Colors.black});
  @override
  Widget build(BuildContext context) {
    return Text(
      "$subtitle",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
