import 'package:flutter/material.dart';

class ProfileTitle extends StatelessWidget {
  final String label;
  const ProfileTitle({this.label});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "$label",
        style: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
