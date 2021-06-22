import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/constant/shared_functions.dart';
import 'package:too_good_to_go/screens/login_screen.dart';
import 'package:too_good_to_go/screens/profile_items.dart';
import 'package:too_good_to_go/widgets/divider_line.dart';
import 'package:too_good_to_go/widgets/message_box.dart';
import 'package:too_good_to_go/widgets/profile_item.dart';
import 'package:too_good_to_go/widgets/profile_title.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';

class ProfileDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        /// TODO : Account Details
        ProfileTitle(label: Messages.PROFILE_ACCOUNT_TITLE),
        ProfileItem(
          icon: CupertinoIcons.person_crop_circle,
          label: Messages.PROFILE_ACCOUNT_NAME,
          value: Constant.userLogin.name,
          onTap: () => Get.to(
            () => ProfileItems(
              index: 0,
              title: Messages.PROFILE_ACCOUNT_NAME,
              user: Constant.userLogin,
            ),
          ),
        ),
        DividerLine(),
        ProfileItem(
          icon: CupertinoIcons.mail_solid,
          label: Messages.PROFILE_ACCOUNT_EMAIL,
          value: Constant.userLogin.email,
          onTap: () => Get.to(
            () => ProfileItems(
              index: 1,
              title: Messages.PROFILE_ACCOUNT_EMAIL,
              user: Constant.userLogin,
            ),
          ),
        ),
        DividerLine(),
        ProfileItem(
          icon: CupertinoIcons.phone_solid,
          label: Messages.PROFILE_ACCOUNT_PHONE,
          value: Constant.userLogin.phone,
          onTap: () => Get.to(
            () => ProfileItems(
              index: 2,
              title: Messages.PROFILE_ACCOUNT_PHONE,
              user: Constant.userLogin,
            ),
          ),
        ),
        DividerLine(),
        ProfileItem(
          icon: CupertinoIcons.building_2_fill,
          label: Messages.PROFILE_ACCOUNT_CITY,
          value: Constant.userLogin.city,
          onTap: () => Get.to(
            () => ProfileItems(
              index: 3,
              title: Messages.PROFILE_ACCOUNT_CITY,
              user: Constant.userLogin,
            ),
          ),
        ),
        DividerLine(),

        /// TODO : Settings
        ProfileTitle(label: Messages.PROFILE_SETTINGS_TITLE),
        ProfileItem(
          icon: CupertinoIcons.bell_solid,
          label: Messages.PROFILE_SETTINGS_NOTIFICATIONS,
          onTap: () => Get.to(
            () => ProfileItems(
              index: 4,
              title: Messages.PROFILE_SETTINGS_NOTIFICATIONS,
              user: Constant.userLogin,
            ),
          ),
        ),
        DividerLine(),
        ProfileItem(
          icon: CupertinoIcons.lock_shield_fill,
          label: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD,
          onTap: () => Get.to(
            () => ProfileItems(
              index: 5,
              title: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD,
              user: Constant.userLogin,
            ),
          ),
        ),
        DividerLine(),
        ProfileItem(
          icon: CupertinoIcons.location_slash_fill,
          label: Messages.PROFILE_SETTINGS_HIDDEN_STORES,
          onTap: () => Get.to(
            () => ProfileItems(
              index: 6,
              title: Messages.PROFILE_SETTINGS_HIDDEN_STORES,
              user: Constant.userLogin,
            ),
          ),
        ),
        DividerLine(),
        ProfileItem(
          icon: CupertinoIcons.doc_on_clipboard_fill,
          label: Messages.PROFILE_SETTINGS_PRIVACY_LICENSES,
          onTap: () => Get.to(
            () => ProfileItems(
              index: 7,
              title: Messages.PROFILE_SETTINGS_PRIVACY_LICENSES,
              user: Constant.userLogin,
            ),
          ),
        ),

        /// TODO : Other Details
        DividerLine(height: 10, color: AppTheme.transparentColor),
        ListTile(
          onTap: () => SharedFunctions.loadMessageBox(
            context,
            screen: MessageBox(
              onPressed: () => Get.offAll(() => LoginScreen()),
              title: Messages.PROFILE_LOG_OUT_MESSAGE,
              acceptTitle: Messages.PROFILE_LOG_OUT,
              cancelTitle: Messages.PROFILE_SETTINGS_PRIVACY_LICENSES_CANCEL,
            ),
          ),
          tileColor: AppTheme.whiteBackColor,
          title: SubtitleText(
            subtitle: Messages.PROFILE_LOG_OUT,
            textAlign: TextAlign.start,
            color: AppTheme.redTextColor,
          ),
        ),
        ListTile(
          title: SubtitleText(
            subtitle: Messages.PROFILE_VERSION,
            textAlign: TextAlign.center,
            color: AppTheme.blackTextColor.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
