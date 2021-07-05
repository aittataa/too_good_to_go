import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';
import 'package:too_good_to_go/widgets/help_item.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class HelpDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
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
    );
  }
}
