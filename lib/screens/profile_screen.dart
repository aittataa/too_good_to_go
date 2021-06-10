import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
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
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            ///
            ProfileTitle(
              label: Messages.PROFILE_ACCOUNT_TITLE,
            ),
            ProfileItem(
              label: Messages.PROFILE_ACCOUNT_NAME,
              title: Constant.userLogin.name,
              onTap: () => Get.to(() => ProfileDetails(index: 0, user: Constant.userLogin)),
            ),
            DividerLine(),
            ProfileItem(
              label: Messages.PROFILE_ACCOUNT_EMAIL,
              title: Constant.userLogin.email,
              onTap: () => Get.to(() => ProfileDetails(index: 1, user: Constant.userLogin)),
            ),
            DividerLine(),
            ProfileItem(
              label: Messages.PROFILE_ACCOUNT_PHONE,
              title: Constant.userLogin.phone,
              onTap: () => Get.to(() => ProfileDetails(index: 2, user: Constant.userLogin)),
            ),
            DividerLine(),
            ProfileItem(
              label: Messages.PROFILE_ACCOUNT_CITY,
              title: Constant.userLogin.city,
              onTap: () => Get.to(() => ProfileDetails(index: 3, user: Constant.userLogin)),
            ),
            DividerLine(),

            ///
            ProfileTitle(
              label: Messages.PROFILE_SETTINGS_TITLE,
            ),
            ProfileItem(
              label: Messages.PROFILE_SETTINGS_NOTIFICATIONS,
              onTap: () => Get.to(() => ProfileDetails(index: 4)),
            ),
            DividerLine(),
            ProfileItem(
              label: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD,
              onTap: () => Get.to(() => ProfileDetails(index: 5)),
            ),
            DividerLine(),
            ProfileItem(
              label: Messages.PROFILE_SETTINGS_HIDDEN_STORES,
              onTap: () => Get.to(() => ProfileDetails(index: 6)),
            ),
            DividerLine(),
            ProfileItem(
              label: Messages.PROFILE_SETTINGS_PRIVACY_LICENSES,
              onTap: () => Get.to(() => ProfileDetails(index: 7)),
            ),
            DividerLine(),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                tileColor: Colors.white,
                title: Text(
                  Messages.PROFILE_LOG_OUT,
                  style: TextStyle(
                    color: Colors.red,
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
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
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
