import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(Messages.LOGO_ICON),
          ListTile(
            title: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                Messages.FAVORITES_TITLE,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
            ),
            subtitle: Text(
              Messages.FAVORITES_SUBTITLE,
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
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                primary: Colors.black12,
                side: BorderSide(
                  color: AppTheme.mainColor,
                  width: 2,
                ),
              ),
              child: Text(
                Messages.FIND_STORE_BUTTON.toUpperCase(),
                style: TextStyle(
                  color: AppTheme.mainColor,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
