import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;
  const MenuItem({this.icon, this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      tileColor: Colors.white,
      leading: Icon(
        icon,
        color: Colors.black54,
        size: 27,
      ),
      title: Text(
        "$text",
        style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Icon(
        CupertinoIcons.right_chevron,
        color: Colors.black54,
        size: 27,
      ),
    );
  }
}
