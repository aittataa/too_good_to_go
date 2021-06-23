import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/screens/item_details.dart';
import 'package:too_good_to_go/widgets/divider_line.dart';
import 'package:too_good_to_go/widgets/profile_title.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';

class PrivacyItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileTitle(label: Messages.PROFILE_SETTINGS_PRIVACY_LICENSES),
        ListTile(
          onTap: () => Get.to(
            () => ItemDetails(index: 1, title: Messages.PROFILE_SETTINGS_PRIVACY),
          ),
          dense: true,
          tileColor: AppTheme.whiteBackColor,
          title: SubtitleText(
            subtitle: Messages.PROFILE_SETTINGS_PRIVACY,
            color: AppTheme.blackTextColor.withOpacity(0.75),
            textAlign: TextAlign.start,
          ),
        ),
        DividerLine(),
        ListTile(
          onTap: () => Get.to(
            () => ItemDetails(index: 2, title: Messages.PROFILE_SETTINGS_LICENSES),
          ),
          dense: true,
          tileColor: AppTheme.whiteBackColor,
          title: SubtitleText(
            subtitle: Messages.PROFILE_SETTINGS_LICENSES,
            color: AppTheme.blackTextColor.withOpacity(0.75),
            textAlign: TextAlign.start,
          ),
        ),
        DividerLine(height: 10, color: AppTheme.transparentColor),
        ListTile(
          onTap: () => Get.to(
            () => ItemDetails(index: 3, title: Messages.PROFILE_SETTINGS_PRIVACY_LICENSES_BUTTON),
          ),
          dense: true,
          tileColor: AppTheme.whiteBackColor,
          title: SubtitleText(
            subtitle: Messages.PROFILE_SETTINGS_PRIVACY_LICENSES_BUTTON,
            textAlign: TextAlign.start,
            color: AppTheme.redTextColor,
          ),
        ),
      ],
    );
  }
}
