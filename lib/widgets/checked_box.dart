import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class CheckedBox extends StatelessWidget {
  final bool state;
  final double size;
  final Color color;
  final Function onTap;
  const CheckedBox({this.state, this.size, this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: state ? AppTheme.lightMainColor : AppTheme.transparentColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: color ?? AppTheme.lightMainColor,
            width: 1.5,
          ),
        ),
        child: Icon(
          CupertinoIcons.checkmark,
          color: state ? AppTheme.whiteIconColor : AppTheme.transparentColor,
          size: size,
        ),
      ),
    );
  }
}
