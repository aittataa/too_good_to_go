import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Image.asset("images/logo.png"),
          ListTile(
            title: Text(
              "No favorites added yet",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Tap the heart on a store to add it to your favorites and it will show up here.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
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
                side: BorderSide(
                  color: AppTheme.mainColor,
                  width: 2,
                ),
              ),
              child: Text(
                "Find  a store".toUpperCase(),
                style: TextStyle(
                  color: AppTheme.mainColor,
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
