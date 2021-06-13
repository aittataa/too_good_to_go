import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/back_button.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
        title: Text(
          "Help Center",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(child: Image.asset(Messages.LOGO_ICON)),
            ListTile(
              title: Text(
                "How can we help you ?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Please choose a topic form below",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            HelpItem(
              icon: CupertinoIcons.bag_fill,
              title: "My Orders",
            ),
            HelpItem(
              icon: CupertinoIcons.gear_alt_fill,
              title: "How Too Good To Go works",
            ),
            HelpItem(
              icon: CupertinoIcons.person_3_fill,
              title: "Join Too Good To Go",
            ),
          ],
        ),
      ),
    );
  }
}

class HelpItem extends StatelessWidget {
  final IconData icon;
  final String title;
  const HelpItem({this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(
          icon,
          size: 32,
          color: AppTheme.mainColor,
        ),
        title: Text(
          "$title",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
