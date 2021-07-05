import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';
import 'package:too_good_to_go/widgets/help_item.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class LearnDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          ExpandedLogo(),
          ListTile(
            title: TitleText(title: Messages.MORE_LEARN_DETAIL_TITLE_1),
            subtitle: SubtitleText(
              subtitle: Messages.MORE_LEARN_DETAIL_TITLE_2,
              color: AppTheme.blackTextColor.withOpacity(.75),
            ),
          ),
          HelpItem(
            icon: CupertinoIcons.lightbulb_fill,
            title: Messages.MORE_LEARN_DETAIL_TITLE_3,
          ),
          HelpItem(
            icon: CupertinoIcons.cart_fill,
            title: Messages.MORE_LEARN_DETAIL_TITLE_4,
          ),
        ],
      ),
    );
  }
}
