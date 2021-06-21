import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class ProfileTitle extends StatelessWidget {
  final String label;
  const ProfileTitle({this.label});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Text(
        "$label",
        style: TextStyle(
          color: AppTheme.blackTextColor.withOpacity(0.5),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
