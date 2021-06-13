import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/messages.dart';

class ExpandedLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Image.asset(Messages.LOGO_ICON));
  }
}
