import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:too_good_to_go/widgets/divider_line.dart';

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
              label: "Account Details",
            ),

            ///
            ProfileItem(
              label: "Name",
              title: "AIT TATA ABDERRAHIM",
            ),
            DividerLine(),
            ProfileItem(
              label: "Email",
              title: "aittataa@gmail.com",
            ),
            DividerLine(),
            ProfileItem(
              label: "Phone Number",
              title: "+212 600 000 000",
            ),
            DividerLine(),
            ProfileItem(
              label: "Country",
              title: "United State",
            ),
            DividerLine(),

            ///
            ProfileTitle(
              label: "Settings",
            ),

            ///
            ProfileItem(
              label: "Notification",
            ),
            DividerLine(),
            ProfileItem(
              label: "Change Password",
            ),
            DividerLine(),
            ProfileItem(
              label: "Hidden Stores",
            ),
            DividerLine(),
            ProfileItem(
              label: "Privacy & Licenses",
            ),
            DividerLine(),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                tileColor: Colors.white,
                title: Text(
                  "Log Out",
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
                  "21.4.0",
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

class ProfileTitle extends StatelessWidget {
  final String label;
  const ProfileTitle({this.label});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "$label",
        style: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final String label;
  final String title;
  final Function onTap;
  const ProfileItem({this.label, this.title = "", this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      dense: true,
      tileColor: Colors.white,
      leading: Text(
        "$label",
        style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),
      ),
      title: Text(
        "$title",
        textAlign: TextAlign.end,
        style: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.w900,
        ),
      ),
      trailing: Icon(
        CupertinoIcons.right_chevron,
        color: Colors.black87,
      ),
    );
  }
}
