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
      );
    } else {
      return SizedBox(
        width: Constant.screenWidth * .8,
        child: Row(
          children: [
            Icon(
              CupertinoIcons.search,
              color: AppTheme.mainColor,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: TextField(
                  autofocus: true,
                  autocorrect: true,
                  cursorColor: AppTheme.mainColor,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    color: AppTheme.blackTextColor.withOpacity(.75),
                    fontWeight: FontWeight.bold,
                  ),
                  scrollPadding: EdgeInsets.zero,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search...",
                    hintStyle: TextStyle(color: AppTheme.blackTextColor.withOpacity(.45)),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: onTap,
              child: Icon(
                CupertinoIcons.clear_circled_solid,
                color: AppTheme.redIconColor.withOpacity(.75),
              ),
            ),
          ],
        ),
      );
    }
  }
}
