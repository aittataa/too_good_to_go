import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class SpeedButton extends StatelessWidget {
  final Function onPress;
  const SpeedButton({this.onPress});

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      onPress: onPress,
      visible: true,
      elevation: 1,
      backgroundColor: AppTheme.whiteBackColor,
      marginBottom: 25,
      marginEnd: 25,
      buttonSize: 50,
      child: Icon(
        Icons.my_location,
        color: AppTheme.lightMainColor,
      ),
    );
  }
}
