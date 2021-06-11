import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/back_button.dart';
import 'package:too_good_to_go/widgets/profile_title.dart';

class SettingsDetails extends StatelessWidget {
  final int index;
  final String title;
  SettingsDetails({this.index, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
        title: Text(
          "$title",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: PageView(
          controller: PageController(initialPage: index),
          physics: NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              child: Column(
                children: [
                  ProfileTitle(label: title),
                  ListTile(
                    tileColor: Colors.white,
                    title: Text(
                      "Push Notifications",
                      style: TextStyle(
                        color: Colors.black87,
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
                  ListTile(
                    tileColor: Colors.white,
                    title: Text(
                      "Email Newsletter",
                      style: TextStyle(
                        color: Colors.black87,
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
                  ProfileTitle(label: "Current Password"),
                  ListTile(
                    tileColor: Colors.white,
                    title: TextField(
                      autofocus: true,
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Type Current Password",
                        hintStyle: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                    ),
                  ),
                  ProfileTitle(label: "New Password"),
                  ListTile(
                    tileColor: Colors.white,
                    title: TextField(
                      autofocus: true,
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Type New Password",
                        hintStyle: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                    ),
                  ),
                  ProfileTitle(label: "Confirm New Password"),
                  ListTile(
                    tileColor: Colors.white,
                    title: TextField(
                      autofocus: true,
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Confirm New Password",
                        hintStyle: TextStyle(
                          color: Colors.black45,
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
                  Image.asset(Messages.LOGO_ICON),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Hidden stores are specific to certain corporate partnership and can't be accessed by the general public. "
                      "\nThe access codes are only available to those involved in these partnership and are not controlled by Too Good To Go",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextButton(
                      onPressed: () {
                        print(Messages.APP_TITLE);
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                        primary: Colors.black12,
                        backgroundColor: AppTheme.mainColor,
                      ),
                      child: Text(
                        "I have a Code".toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 15,
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
                  ProfileTitle(label: title),
                  ListTile(
                    tileColor: Colors.white,
                    title: Text(
                      "Send me a copy of my data",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.white,
                    title: Text(
                      "Privacy Policy",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.white,
                    title: Text(
                      "Licenses",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      tileColor: Colors.white,
                      title: Text(
                        "Delete account",
                        style: TextStyle(
                          color: Colors.red,
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
