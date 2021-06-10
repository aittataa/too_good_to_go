import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:too_good_to_go/constant/messages.dart';
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
              title: "AIT TATA ABDERRAHIM",
            ),
            DividerLine(),
            ProfileItem(
              label: Messages.PROFILE_ACCOUNT_EMAIL,
              title: "aittataa@gmail.com",
            ),
            DividerLine(),
            ProfileItem(
              label: Messages.PROFILE_ACCOUNT_PHONE,
              title: "+212 600 000 000",
            ),
            DividerLine(),
            ProfileItem(
              label: Messages.PROFILE_ACCOUNT_COUNTRY,
              title: "United State",
            ),
            DividerLine(),

            ///
            ProfileTitle(
              label: Messages.PROFILE_SETTINGS_TITLE,
            ),
            ProfileItem(
              label: Messages.PROFILE_SETTINGS_NOTIFICATIONS,
            ),
            DividerLine(),
            ProfileItem(
              label: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD,
            ),
            DividerLine(),
            ProfileItem(
              label: Messages.PROFILE_SETTINGS_HIDDEN_STORES,
            ),
            DividerLine(),
            ProfileItem(
              label: Messages.PROFILE_SETTINGS_PRIVACY_LICENSES,
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
