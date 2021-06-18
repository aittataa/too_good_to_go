import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/models/user.dart';
import 'package:too_good_to_go/screens/privacy_details.dart';
import 'package:too_good_to_go/widgets/back_button.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/divider_line.dart';
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
          "$title",
          style: Constant.appBarStyle,
        ),
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
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    color: AppTheme.whiteBackColor,
                    child: TextField(
                      autofocus: true,
                      controller: TextEditingController(text: user.name),
                      style: TextStyle(
                        color: AppTheme.blackTextColor.withOpacity(0.75),
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: Messages.PROFILE_ACCOUNT_NAME,
                        hintStyle: TextStyle(
                          color: AppTheme.blackTextColor.withOpacity(0.25),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.clear_thick_circled,
                            color: AppTheme.blackIconColor.withOpacity(0.75),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  ProfileTitle(label: Messages.PROFILE_ACCOUNT_EMAIL),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    color: AppTheme.whiteBackColor,
                    child: TextField(
                      autofocus: true,
                      controller: TextEditingController(text: user.email),
                      style: TextStyle(
                        color: AppTheme.blackTextColor.withOpacity(0.75),
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: Messages.PROFILE_ACCOUNT_EMAIL,
                        hintStyle: TextStyle(
                          color: AppTheme.blackTextColor.withOpacity(0.25),
                        ),
                        suffixIcon: IconButton(
                          onPressed: null,
                          icon: Icon(
                            CupertinoIcons.clear_thick_circled,
                            color: AppTheme.blackIconColor.withOpacity(0.75),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  ProfileTitle(label: Messages.PROFILE_ACCOUNT_PHONE),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    color: AppTheme.whiteBackColor,
                    child: TextField(
                      autofocus: true,
                      controller: TextEditingController(text: user.phone),
                      style: TextStyle(
                        color: AppTheme.blackTextColor.withOpacity(0.75),
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: Messages.PROFILE_ACCOUNT_PHONE,
                        hintStyle: TextStyle(
                          color: AppTheme.blackTextColor.withOpacity(0.25),
                        ),
                        suffixIcon: Icon(
                          CupertinoIcons.clear_thick_circled,
                          color: AppTheme.blackIconColor.withOpacity(0.75),
                        ),
                      ),
                    ),
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
                            title: Text(
                              "$value",
                              style: TextStyle(
                                color: AppTheme.blackTextColor.withOpacity(0.75),
                                fontWeight: FontWeight.bold,
                              ),
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
                    tileColor: AppTheme.whiteBackColor,
                    title: Text(
                      Messages.PROFILE_SETTINGS_NOTIFICATIONS_TITLE_1,
                      style: TextStyle(
                        color: AppTheme.blackBackColor.withOpacity(0.75),
                        fontWeight: FontWeight.w900,
                      ),
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
                    tileColor: AppTheme.whiteBackColor,
                    title: Text(
                      Messages.PROFILE_SETTINGS_NOTIFICATIONS_TITLE_2,
                      style: TextStyle(
                        color: AppTheme.blackBackColor.withOpacity(0.75),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    trailing: Switch(
                      onChanged: (value) {},
                      value: true,
                      activeColor: AppTheme.mainColor,
                      activeTrackColor: AppTheme.lightMainColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  ProfileTitle(label: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_TITLE_1),
                  ListTile(
                    tileColor: AppTheme.whiteBackColor,
                    title: TextField(
                      autofocus: true,
                      style: TextStyle(
                        color: AppTheme.blackTextColor.withOpacity(0.75),
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_HINT_1,
                        hintStyle: TextStyle(
                          color: AppTheme.blackTextColor.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                  ProfileTitle(label: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_TITLE_2),
                  ListTile(
                    tileColor: AppTheme.whiteBackColor,
                    title: TextField(
                      autofocus: true,
                      style: TextStyle(
                        color: AppTheme.blackTextColor.withOpacity(0.75),
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_HINT_2,
                        hintStyle: TextStyle(
                          color: AppTheme.blackTextColor.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                  ProfileTitle(label: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_TITLE_3),
                  ListTile(
                    tileColor: AppTheme.whiteBackColor,
                    title: TextField(
                      autofocus: true,
                      style: TextStyle(
                        color: AppTheme.blackTextColor.withOpacity(0.75),
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_HINT_3,
                        hintStyle: TextStyle(
                          color: AppTheme.blackTextColor.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ExpandedLogo(flex: 2),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ListTile(
                          title: SubtitleText(
                            subtitle: Messages.PROFILE_SETTINGS_HIDDEN_STORES_DESC,
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
                    tileColor: AppTheme.whiteBackColor,
                    title: Text(
                      Messages.PROFILE_SETTINGS_PRIVACY,
                      style: TextStyle(
                        color: AppTheme.blackTextColor.withOpacity(0.75),
                        fontWeight: FontWeight.bold,
                      ),
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
                    tileColor: AppTheme.whiteBackColor,
                    title: Text(
                      Messages.PROFILE_SETTINGS_LICENSES,
                      style: TextStyle(
                        color: AppTheme.blackTextColor.withOpacity(0.75),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      onTap: () => Get.to(
                        () => PrivacyDetails(
                          index: 2,
                          title: Messages.PROFILE_SETTINGS_PRIVACY_LICENSES_BUTTON,
                        ),
                      ),
                      tileColor: AppTheme.whiteBackColor,
                      title: Text(
                        Messages.PROFILE_SETTINGS_PRIVACY_LICENSES_BUTTON,
                        style: TextStyle(
                          color: AppTheme.redTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
