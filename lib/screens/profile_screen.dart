import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/models/user.dart';
import 'package:too_good_to_go/pages/profile_items/cities_item.dart';
import 'package:too_good_to_go/pages/profile_items/email_item.dart';
import 'package:too_good_to_go/pages/profile_items/name_item.dart';
import 'package:too_good_to_go/pages/profile_items/notifications_item.dart';
import 'package:too_good_to_go/pages/profile_items/password_item.dart';
import 'package:too_good_to_go/pages/profile_items/phone_item.dart';
import 'package:too_good_to_go/pages/profile_items/privacy_item.dart';
import 'package:too_good_to_go/pages/profile_items/stores_item.dart';
import 'package:too_good_to_go/widgets/back_icon.dart';

class ProfileScreen extends StatelessWidget {
  final int index;
  final String title;
  final User user;
  ProfileScreen({this.index, this.title, this.user});

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
          ),

          /// TODO : Email
          EmailItem(
            controller: TextEditingController(text: user.email),
          ),

          /// TODO : Phone Number
          PhoneItem(
            controller: TextEditingController(text: user.phone),
          ),

          /// TODO : City
          CitiesItem(),

          /// TODO : Notifications
          NotificationsItem(),

          /// TODO : Password
          PasswordItem(
            currentPassword: TextEditingController(),
            newPassword: TextEditingController(),
            confirmPassword: TextEditingController(),
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
