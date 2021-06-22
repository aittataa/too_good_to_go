import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/models/user.dart';
import 'package:too_good_to_go/screens/item_details.dart';
import 'package:too_good_to_go/widgets/back_icon.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/divider_line.dart';
import 'package:too_good_to_go/widgets/edit_text.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';
import 'package:too_good_to_go/widgets/profile_title.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';

class ProfileItems extends StatelessWidget {
  final int index;
  final String title;
  final User user;
  ProfileItems({this.index, this.title, this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
        title: Text(
          "$title",
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
      body: PageView(
        controller: PageController(initialPage: index),
        physics: NeverScrollableScrollPhysics(),
        children: [
          /// TODO : Name
          NameItem(
            controller: TextEditingController(text: user.name),
            onPressed: () => FocusScope.of(context).unfocus(),
          ),

          /// TODO : Email
          EmailItem(
            controller: TextEditingController(text: user.email),
            onPressed: () => FocusScope.of(context).unfocus(),
          ),

          /// TODO : Phone Number
          PhoneItem(
            controller: TextEditingController(text: user.phone),
            onPressed: () => FocusScope.of(context).unfocus(),
          ),

          /// TODO : City
          CitiesItem(),

          /// TODO : Notifications
          NotificationsItem(),

          /// TODO : Password
          PasswordItem(
            onCurrentPressed: () => FocusScope.of(context).unfocus(),
            onNewPressed: () => FocusScope.of(context).unfocus(),
            onConfirmPressed: () => FocusScope.of(context).unfocus(),
          ),

          /// TODO : Stores
          StoresItem(),

          /// TODO : Privacy & Licences
          PrivacyItem(),
        ],
      ),
    );
  }
}

class PrivacyItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
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
      ),
    );
  }
}

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

class PasswordItem extends StatelessWidget {
  final TextEditingController currentPassword;
  final TextEditingController newPassword;
  final TextEditingController confirmPassword;
  final Function onCurrentPressed;
  final Function onNewPressed;
  final Function onConfirmPressed;
  const PasswordItem({
    this.currentPassword,
    this.newPassword,
    this.confirmPassword,
    this.onCurrentPressed,
    this.onNewPressed,
    this.onConfirmPressed,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ProfileTitle(label: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_TITLE_1),
            EditText(
              onPressed: onCurrentPressed,
              controller: currentPassword,
              hintText: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_HINT_1,
              obscureText: true,
            ),
            ProfileTitle(label: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_TITLE_2),
            EditText(
              onPressed: onNewPressed,
              controller: newPassword,
              hintText: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_HINT_2,
              obscureText: true,
            ),
            ProfileTitle(label: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_TITLE_3),
            EditText(
              onPressed: onConfirmPressed,
              controller: confirmPassword,
              hintText: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD_HINT_3,
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}

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

class CitiesItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}

class PhoneItem extends StatelessWidget {
  final TextEditingController controller;
  final Function onPressed;
  const PhoneItem({this.controller, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileTitle(label: Messages.PROFILE_ACCOUNT_PHONE),
        EditText(
          onPressed: onPressed,
          controller: controller,
          hintText: Messages.PROFILE_ACCOUNT_PHONE,
          textInputType: TextInputType.phone,
        ),
      ],
    );
  }
}

class EmailItem extends StatelessWidget {
  final TextEditingController controller;
  final Function onPressed;
  const EmailItem({this.controller, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileTitle(label: Messages.PROFILE_ACCOUNT_EMAIL),
        EditText(
          onPressed: onPressed,
          controller: controller,
          hintText: Messages.PROFILE_ACCOUNT_EMAIL,
          textInputType: TextInputType.emailAddress,
        ),
      ],
    );
  }
}

class NameItem extends StatelessWidget {
  final TextEditingController controller;
  final Function onPressed;
  const NameItem({this.controller, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileTitle(label: Messages.PROFILE_ACCOUNT_NAME),
        EditText(
          onPressed: onPressed,
          controller: controller,
          hintText: Messages.PROFILE_ACCOUNT_NAME,
          textInputType: TextInputType.name,
        ),
      ],
    );
  }
}
