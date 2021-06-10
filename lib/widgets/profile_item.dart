import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final String label;
  final String title;
  final Function onTap;
  const ProfileItem({this.label, this.title = "", this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      dense: true,
      tileColor: Colors.white,
      leading: Text(
        "$label",
        style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),
      ),
      title: Text(
        "$title",
        textAlign: TextAlign.end,
        style: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.w900,
        ),
      ),
      trailing: Icon(
        CupertinoIcons.right_chevron,
        color: Colors.black87,
      ),
    );
  }
}
