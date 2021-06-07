import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/location_item.dart';
import 'package:too_good_to_go/widgets/page_title.dart';

class DiscoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          PageTitle(title: Messages.LABEL_DISCOVER),
          LocationItem(),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        title: Text(
                          Messages.TITLE_1,
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
                          Messages.SUBTITLE_1,
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
                            padding: EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                            primary: Colors.black12,
                          ),
                          child: Text(
                            Messages.CHANGE_LOCATION_BUTTON,
                            style: TextStyle(
                              color: AppTheme.mainColor,
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: AppTheme.mainColor.withOpacity(0.5),
                          thickness: 1,
                          indent: 15,
                          endIndent: 5,
                        ),
                      ),
                      Image.asset(
                        Messages.INSTAGRAM_ICON,
                        color: AppTheme.mainColor,
                        width: 45,
                        height: 45,
                      ),
                      Expanded(
                        child: Divider(
                          color: AppTheme.mainColor.withOpacity(0.5),
                          thickness: 1,
                          indent: 5,
                          endIndent: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          Messages.TITLE_2,
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
                          Messages.SUBTITLE_2,
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
                            backgroundColor: AppTheme.mainColor,
                          ),
                          child: Text(
                            Messages.FOLLOW_INSTAGRAM_BUTTON.toUpperCase(),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
