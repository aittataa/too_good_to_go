import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/screens/profile_details.dart';
import 'package:too_good_to_go/widgets/back_button.dart';
import 'package:too_good_to_go/widgets/divider_line.dart';
import 'package:too_good_to_go/widgets/profile_item.dart';
import 'package:too_good_to_go/widgets/profile_title.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
        title: Text(
          Messages.PROFILE_TITLE,
          style: TextStyle(
            color: AppTheme.whiteTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// TODO : Account Details
            ProfileTitle(label: Messages.PROFILE_ACCOUNT_TITLE),
            ProfileItem(
              icon: CupertinoIcons.person_crop_circle,
              label: Messages.PROFILE_ACCOUNT_NAME,
              value: Constant.userLogin.name,
              onTap: () => Get.to(
                () => ProfileDetails(
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
                () => ProfileDetails(
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
                () => ProfileDetails(
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
                () => ProfileDetails(
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
                () => ProfileDetails(
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
                () => ProfileDetails(
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
                () => ProfileDetails(
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
                () => ProfileDetails(
                  index: 7,
                  title: Messages.PROFILE_SETTINGS_PRIVACY_LICENSES,
                  user: Constant.userLogin,
                ),
              ),
            ),
            DividerLine(),

            /// TODO : Other Details
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                tileColor: AppTheme.whiteBackColor,
                title: Text(
                  Messages.PROFILE_LOG_OUT,
                  style: TextStyle(
                    color: AppTheme.redTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                title: Text(
                  Messages.PROFILE_VERSION,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppTheme.blackTextColor.withOpacity(0.5),
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
