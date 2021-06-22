import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/back_icon.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';
import 'package:too_good_to_go/widgets/help_item.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class HelpScreen extends StatelessWidget {
  final int index;
  final String title;
  const HelpScreen({this.index, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
        title: Text(
          title,
          style: Constant.appBarStyle,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: PageView(
          controller: PageController(initialPage: index),
          physics: NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              child: Column(
                children: [
                  ExpandedLogo(),
                  ListTile(
                    title: TitleText(title: Messages.MORE_HELP_CENTER_TITLE),
                    subtitle: SubtitleText(
                      subtitle: Messages.MORE_HELP_CENTER_SUBTITLE,
                      color: AppTheme.blackTextColor.withOpacity(.75),
                    ),
                  ),
                  HelpItem(
                    icon: CupertinoIcons.bag_fill,
                    title: Messages.MORE_HELP_CENTER_ITEM_TITLE_1,
                  ),
                  HelpItem(
                    icon: CupertinoIcons.gear_alt_fill,
                    title: Messages.MORE_HELP_CENTER_ITEM_TITLE_2,
                  ),
                  HelpItem(
                    icon: CupertinoIcons.person_3_fill,
                    title: Messages.MORE_HELP_CENTER_ITEM_TITLE_3,
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  ExpandedLogo(),
                  ListTile(
                    title: TitleText(title: "Join ${Messages.APP_TITLE} as a store"),
                    subtitle: SubtitleText(
                      subtitle: "Do you want to...",
                      color: AppTheme.blackTextColor.withOpacity(.75),
                    ),
                  ),
                  HelpItem(
                    icon: CupertinoIcons.lightbulb_fill,
                    title: "Recommend a store to us you think should join ${Messages.APP_TITLE}",
                  ),
                  HelpItem(
                    icon: CupertinoIcons.cart_fill,
                    title: "Sign your store up and sell surplus food on ${Messages.APP_TITLE}",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
