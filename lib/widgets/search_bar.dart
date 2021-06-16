import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';

class SearchBar extends StatelessWidget {
  final bool state;
  final Function onTap;
  const SearchBar({this.state = false, this.onTap});
  @override
  Widget build(BuildContext context) {
    if (!state) {
      return Icon(
        CupertinoIcons.search,
        color: AppTheme.mainColor,
        size: 27,
      );
    } else {
      return SizedBox(
        width: Constant.screenWidth * .81,
        child: Row(
          children: [
            Icon(
              CupertinoIcons.search,
              color: AppTheme.mainColor,
              size: 27,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: TextField(
                  autofocus: true,
                  autocorrect: true,
                  cursorColor: AppTheme.mainColor,
                  style: TextStyle(
                    color: AppTheme.blackTextColor.withOpacity(.75),
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Type a Store",
                    hintStyle: TextStyle(color: AppTheme.blackTextColor.withOpacity(.45)),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: onTap,
              child: Icon(
                CupertinoIcons.clear_circled_solid,
                color: AppTheme.blackIconColor.withOpacity(.5),
                size: 27,
              ),
            ),
          ],
        ),
      );
    }
  }
}
