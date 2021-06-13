import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';
import 'package:too_good_to_go/widgets/page_title.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          PageTitle(title: Messages.LABEL_FAVORITES),
          ExpandedLogo(),
          ListTile(
            title: TitleText(title: Messages.FAVORITES_TITLE),
          ),
          ListTile(
            title: SubtitleText(subtitle: Messages.FAVORITES_SUBTITLE),
          ),
          ListTile(
            title: ButtonClick(
              title: Messages.CHANGE_LOCATION_BUTTON,
              textColor: AppTheme.whiteTextColor,
              backColor: AppTheme.mainColor,
            ),
          ),
        ],
      ),
    );
  }
}
