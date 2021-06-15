import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/messages.dart';

class ExpandedLogo extends StatelessWidget {
  final int flex;
  const ExpandedLogo({this.flex = 1});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Image.asset(Messages.LOGO_ICON),
    );
  }
}
