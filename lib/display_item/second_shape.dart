import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class SecondShape extends StatelessWidget {
  final bool state;
  const SecondShape({this.state = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppTheme.whiteBackColor,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [Constant.itemShadow],
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Messages.APP_ICON),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: AppTheme.blackBackColor.withOpacity(.1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      leading: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppTheme.blackBackColor.withOpacity(.25),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Check back later",
                          style: TextStyle(
                            color: AppTheme.whiteTextColor,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      trailing: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppTheme.blackBackColor.withOpacity(.25),
                        ),
                        child: Icon(
                          state ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                          color: state ? AppTheme.redIconColor : AppTheme.whiteIconColor.withOpacity(.75),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(2.5),
                                  decoration: BoxDecoration(
                                    color: AppTheme.lightMainColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Container(
                                    width: 75,
                                    height: 75,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppTheme.whiteBackColor,
                                      image: DecorationImage(
                                        image: AssetImage(Messages.LOGO_ICON),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: AppTheme.mainColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TitleText(
                                    title: "\$3.99",
                                    color: AppTheme.whiteTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            title: TitleText(
              title: "Fresh Central Grocery",
              color: AppTheme.blackTextColor,
              textAlign: TextAlign.start,
            ),
            subtitle: SubtitleText(
              subtitle: "Today 17:00 - 02:00 | 3.2 mi",
              color: AppTheme.blackTextColor.withOpacity(.5),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
