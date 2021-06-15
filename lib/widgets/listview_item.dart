import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';

class ListViewItem extends StatelessWidget {
  final Widget child;
  final Color color;
  final Function onTap;
  const ListViewItem({
    this.child,
    this.color = AppTheme.whiteBackColor,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 5,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
