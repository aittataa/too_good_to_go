import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/pages/favorites_items/display_item.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class FavoritesBody extends StatelessWidget {
  final bool state;
  const FavoritesBody({this.state});

  @override
  Widget build(BuildContext context) {
    if (state) {
      return Expanded(child: DisplayItem());
    } else {
      return Expanded(
        child: Column(
          children: [
            ExpandedLogo(),
            ListTile(
              title: TitleText(title: Messages.FAVORITES_TITLE),
            ),
            ListTile(
              subtitle: SubtitleText(
                subtitle: Messages.FAVORITES_SUBTITLE,
                color: AppTheme.blackTextColor.withOpacity(.75),
              ),
            ),
            ListTile(
              title: ButtonClick(
                onPressed: () {},
                title: Messages.FIND_STORE_BUTTON,
                textColor: AppTheme.whiteTextColor,
                backColor: AppTheme.mainColor,
              ),
            ),
          ],
        ),
      );
    }
  }
}
