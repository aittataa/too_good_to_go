import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class FirstShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppTheme.whiteBackColor,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: AppTheme.blackShadowColor.withOpacity(.10),
            blurRadius: 10,
            spreadRadius: -1,
          )
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(Messages.APP_ICON_ROUND),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppTheme.mainColor,
                      ),
                      child: Text(
                        "5+",
                        style: TextStyle(
                          color: AppTheme.whiteTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  "1.0 mi",
                  softWrap: false,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: AppTheme.blackTextColor.withOpacity(.5),
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TitleText(
                    title: "Brooklyn Diamond Coffee - With Cream",
                    textAlign: TextAlign.start,
                  ),
                  SubtitleText(
                    subtitle: "Today 21:30 - 21:55",
                    color: AppTheme.blackTextColor.withOpacity(.75),
                    textAlign: TextAlign.start,
                  ),
                  TitleText(
                    title: "\$4.99",
                    color: AppTheme.mainColor,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              CupertinoIcons.right_chevron,
            ),
          ),
        ],
      ),
    );
  }
}
