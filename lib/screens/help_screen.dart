import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/back_button.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';
import 'package:too_good_to_go/widgets/help_item.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
        title: Text(
          Messages.MORE_HELP_TITLE,
          style: Constant.appBarStyle,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ExpandedLogo(),
            ListTile(
              title: TitleText(
                title: Messages.MORE_HELP_CENTER_TITLE,
              ),
              subtitle: Padding(
                padding: EdgeInsets.all(10),
                child: SubtitleText(
                  subtitle: Messages.MORE_HELP_CENTER_SUBTITLE,
                ),
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
    );
  }
}
