import 'package:flutter/material.dart';

class DividerLine extends StatelessWidget {
  final double height;
  final Color color;

  const DividerLine({
    this.height = 1,
    this.color = Colors.white,
  });
  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      color: color,
    );
  }
}
