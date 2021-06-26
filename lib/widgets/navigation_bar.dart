import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';

class NavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function onTap;
  const NavigationBar({this.currentIndex, this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      elevation: 10,
      currentIndex: currentIndex,
      backgroundColor: AppTheme.whiteBackColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppTheme.mainColor,
      unselectedItemColor: AppTheme.blackTextColor.withOpacity(.5),
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.w900),
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      items: [
        BottomNavigationBarItem(
          label: Messages.LABEL_DISCOVER,
          icon: Icon(CupertinoIcons.compass),
          activeIcon: Icon(CupertinoIcons.compass_fill),
        ),
        BottomNavigationBarItem(
          label: Messages.LABEL_BROWSE,
          icon: Icon(CupertinoIcons.bag),
          activeIcon: Icon(CupertinoIcons.bag_fill),
        ),
        BottomNavigationBarItem(
          label: Messages.LABEL_FAVORITES,
          icon: Icon(CupertinoIcons.heart),
          activeIcon: Icon(CupertinoIcons.heart_fill),
        ),
        BottomNavigationBarItem(
          label: Messages.LABEL_MORE,
          icon: Icon(CupertinoIcons.ellipsis),
          activeIcon: Icon(CupertinoIcons.ellipsis_circle_fill),
        ),
      ],
    );
  }
}
