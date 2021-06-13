import 'package:flutter/material.dart';

class DividerLine extends StatelessWidget {
  final double height;
  final Color color;
  final double value;

  const DividerLine({
    this.height = 2.5,
    this.color = Colors.white,
    this.value = 0,
  });
  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      color: color,
      thickness: 1,
      indent: value,
      endIndent: value,
    );
  }
}
