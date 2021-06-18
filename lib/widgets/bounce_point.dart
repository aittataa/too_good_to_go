import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';

class BouncePoint extends StatelessWidget {
  final double size;
  const BouncePoint({this.size = 64});

  @override
  Widget build(BuildContext context) {
    return SpinKitThreeBounce(
      size: size,
      color: AppTheme.lightMainColor,
      duration: Constant.duration,
    );
  }
}
