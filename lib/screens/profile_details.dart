import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/models/user.dart';
import 'package:too_good_to_go/widgets/back_button.dart';
import 'package:too_good_to_go/widgets/details_item.dart';

final List<String> myTitles = [
  Messages.PROFILE_ACCOUNT_NAME,
  Messages.PROFILE_ACCOUNT_EMAIL,
  Messages.PROFILE_ACCOUNT_PHONE,
  Messages.PROFILE_ACCOUNT_CITY,
];

final List<String> cities = [
  "Casablanca",
  "MARRAKECK",
  "AGADIR",
  "TANGER",
  "TAMARA",
];

class ProfileDetails extends StatelessWidget {
  final int index;
  final User user;
  ProfileDetails({this.index, this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
        title: Text(
          "Your ${myTitles[index]}",
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
            ///
            DetailsItem(
              title: Messages.PROFILE_ACCOUNT_NAME,
              child: TextField(
                autofocus: true,
                controller: TextEditingController(text: user.name),
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: Messages.PROFILE_ACCOUNT_NAME,
                  hintStyle: TextStyle(
                    color: Colors.black45,
                  ),
                  suffixIcon: Icon(
                    CupertinoIcons.clear_thick_circled,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            DetailsItem(
              title: Messages.PROFILE_ACCOUNT_EMAIL,
              child: TextField(
                autofocus: true,
                controller: TextEditingController(text: user.email),
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: Messages.PROFILE_ACCOUNT_NAME,
                  hintStyle: TextStyle(
                    color: Colors.black45,
                  ),
                  suffixIcon: Icon(
                    CupertinoIcons.clear_thick_circled,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            DetailsItem(
              title: Messages.PROFILE_ACCOUNT_PHONE,
              child: TextField(
                autofocus: true,
                controller: TextEditingController(text: user.phone),
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: Messages.PROFILE_ACCOUNT_NAME,
                  hintStyle: TextStyle(
                    color: Colors.black45,
                  ),
                  suffixIcon: Icon(
                    CupertinoIcons.clear_thick_circled,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            DetailsItem(
              title: Messages.PROFILE_ACCOUNT_CITY,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  String value = cities[index];
                  return Text(
                    "$value",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
                // children: List.generate(cities.length, (index) {
                //   String value = cities[index];
                //   return
                //   Text(
                //     "$value",
                //     style: TextStyle(
                //       color: Colors.black87,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   );
                // }),
              ),
            ),

            ///
            DetailsItem(
              title: Messages.PROFILE_SETTINGS_NOTIFICATIONS,
              child: Column(
                children: [],
              ),
            ),
            DetailsItem(
              title: Messages.PROFILE_SETTINGS_CHANGE_PASSWORD,
              child: Column(
                children: [],
              ),
            ),
            DetailsItem(
              title: Messages.PROFILE_SETTINGS_HIDDEN_STORES,
              child: Column(
                children: [],
              ),
            ),
            DetailsItem(
              title: Messages.PROFILE_SETTINGS_PRIVACY_LICENSES,
              child: Column(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
