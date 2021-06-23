import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/screens/item_details.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';

class StoresItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ExpandedLogo(),
          ListTile(
            dense: true,
            title: SubtitleText(
              subtitle: Messages.PROFILE_SETTINGS_HIDDEN_STORES_DESC,
              color: AppTheme.blackTextColor.withOpacity(.75),
            ),
          ),
          ListTile(
            title: ButtonClick(
              onPressed: () => Get.to(
                () => ItemDetails(index: 0, title: Messages.PROFILE_SETTINGS_HIDDEN_STORES),
              ),
              title: Messages.PROFILE_SETTINGS_HIDDEN_STORES_BUTTON_TEXT,
              textColor: AppTheme.whiteTextColor,
              backColor: AppTheme.mainColor,
            ),
          ),
        ],
      ),
    );
  }
}
