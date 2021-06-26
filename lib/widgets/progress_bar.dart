import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/widgets/bounce_point.dart';

class ProgressBar extends StatelessWidget {
  final bool inAsyncCall;
  final double opacity;
  final Widget child;
  ProgressBar({this.inAsyncCall = false, this.opacity = 0.5, this.child});

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: inAsyncCall,
      color: AppTheme.mainBackColor,
      opacity: opacity,
      progressIndicator: BouncePoint(),
      child: child,
    );
  }
}
