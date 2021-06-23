import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/divider_line.dart';
import 'package:too_good_to_go/widgets/profile_title.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';

class NotificationsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          ProfileTitle(label: Messages.PROFILE_SETTINGS_NOTIFICATIONS),
          ListTile(
            dense: true,
            tileColor: AppTheme.whiteBackColor,
            title: SubtitleText(
              subtitle: Messages.PROFILE_SETTINGS_NOTIFICATIONS_TITLE_1,
              color: AppTheme.blackBackColor.withOpacity(0.75),
              textAlign: TextAlign.start,
            ),
            trailing: Switch(
              onChanged: (value) {},
              value: true,
              activeColor: AppTheme.mainColor,
              activeTrackColor: AppTheme.lightMainColor,
            ),
          ),
          DividerLine(),
          ListTile(
            dense: true,
            tileColor: AppTheme.whiteBackColor,
            title: SubtitleText(
              subtitle: Messages.PROFILE_SETTINGS_NOTIFICATIONS_TITLE_2,
              textAlign: TextAlign.start,
              color: AppTheme.blackBackColor.withOpacity(0.75),
            ),
            trailing: Switch(
              onChanged: (value) {},
              value: false,
              activeColor: AppTheme.mainColor,
              activeTrackColor: AppTheme.lightMainColor,
            ),
          ),
        ],
      ),
    );
  }
}
