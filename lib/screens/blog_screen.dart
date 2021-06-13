import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/back_button.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
        title: Text(
          "Blog",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            ListTile(
              title: Text(
                "My Blog",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w900,
                  fontSize: 32,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Blog description",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: -1,
                    blurRadius: 10,
                  ),
                ],
              ),
              height: 500,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      child: Image.asset(Messages.LOGO_ICON),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            subtitle: Text(
                              "TIPS & TRICKS",
                              style: TextStyle(
                                color: AppTheme.lightMainColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "How and when to wash your fresh produce".toUpperCase(),
                              style: TextStyle(
                                color: AppTheme.mainColor,
                                fontWeight: FontWeight.w900,
                                fontSize: 30,
                              ),
                            ),
                          ),
                          ListTile(
                            subtitle: Text(
                              "17 hours ago | Sarah Hardit",
                              style: TextStyle(
                                color: AppTheme.mainColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
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
