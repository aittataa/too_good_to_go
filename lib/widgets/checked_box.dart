import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class CheckedBox extends StatelessWidget {
  final bool state;
  final double size;
  final Function onTap;
  const CheckedBox({this.state, this.size = 30, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: state ? AppTheme.mainColor : AppTheme.transparentColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppTheme.mainColor.withOpacity(.5), width: 1.5),
        ),
        child: Icon(
          CupertinoIcons.checkmark_alt,
          color: state ? AppTheme.whiteIconColor : AppTheme.transparentColor,
          size: size,
        ),
      ),
    );
  }
}
