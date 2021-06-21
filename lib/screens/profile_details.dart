import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/models/user.dart';
import 'package:too_good_to_go/screens/privacy_details.dart';
import 'package:too_good_to_go/widgets/back_icon.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/divider_line.dart';
import 'package:too_good_to_go/widgets/edit_text.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';
import 'package:too_good_to_go/widgets/profile_title.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';

class ProfileDetails extends StatelessWidget {
  final int index;
  final String title;
  final User user;
  ProfileDetails({this.index, this.title, this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
        title: Text(
          title,
          style: Constant.appBarStyle,
        ),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(
              CupertinoIcons.checkmark_alt,
              color: AppTheme.whiteIconColor,
            ),
          ),
        ],
      ),
      body: Container(
        child: PageView(
          controller: PageController(initialPage: index),
          physics: NeverScrollableScrollPhysics(),
          children: [
            /// TODO : Account Details
            SizedBox(
              child: Column(
                children: [
                  ProfileTitle(label: Messages.PROFILE_ACCOUNT_NAME),
                  EditText(
                    controller: TextEditingController(text: user.name),
                    hintText: Messages.PROFILE_ACCOUNT_NAME,
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  ProfileTitle(label: Messages.PROFILE_ACCOUNT_EMAIL),
                  EditText(
                    controller: TextEditingController(text: user.email),
                    hintText: Messages.PROFILE_ACCOUNT_EMAIL,
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  ProfileTitle(label: Messages.PROFILE_ACCOUNT_PHONE),
                  EditText(
                    controller: TextEditingController(text: user.phone),
                    hintText: Messages.PROFILE_ACCOUNT_PHONE,
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  ProfileTitle(label: Messages.PROFILE_ACCOUNT_CITY),
                  Expanded(
                    child: Container(
                      color: AppTheme.whiteBackColor,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: Constant.cities.length,
                        itemBuilder: (BuildContext context, int index) {
                          String value = Constant.cities[index];
                          return ListTile(
                            dense: true,
                            title: SubtitleText(
                              subtitle: "$value",
                              color: AppTheme.blackTextColor.withOpacity(0.75),
                              textAlign: TextAlign.start,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /// TODO : Settings Details
            SizedBox(
              child: Column(
                children: [
                  ProfileTitle(label: title),
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
            ),
            SizedBox(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ProfileTitle(label: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_TITLE_1),
                    EditText(hintText: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_HINT_1),
                    ProfileTitle(label: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_TITLE_2),
                    EditText(hintText: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_HINT_2),
                    ProfileTitle(label: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_TITLE_3),
                    EditText(hintText: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_HINT_3),
                  ],
                ),
              ),
            ),
            SizedBox(
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
                      title: Messages.PROFILE_SETTINGS_HIDDEN_STORES_BUTTON_TEXT,
                      textColor: AppTheme.whiteTextColor,
                      backColor: AppTheme.mainColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  ProfileTitle(label: title),
                  ListTile(
                    onTap: () => Get.to(
                      () => PrivacyDetails(
                        index: 0,
                        title: Messages.PROFILE_SETTINGS_PRIVACY,
                      ),
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
                      () => PrivacyDetails(
                        index: 1,
                        title: Messages.PROFILE_SETTINGS_LICENSES,
                      ),
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
                      () => PrivacyDetails(
                        index: 2,
                        title: Messages.PROFILE_SETTINGS_PRIVACY_LICENSES_BUTTON,
                      ),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
