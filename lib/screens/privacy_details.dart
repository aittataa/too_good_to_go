import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/back_button.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class PrivacyDetails extends StatelessWidget {
  final int index;
  final String title;
  const PrivacyDetails({Key key, this.index, this.title}) : super(key: key);
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ExpandedLogo(),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TitleText(title: "$title"),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ExpandedLogo(),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TitleText(title: "$title"),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ExpandedLogo(),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      Messages.PROFILE_SETTINGS_PRIVACY_LICENSES_EXIT_TITLE,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppTheme.blackTextColor.withOpacity(.75),
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      Messages.PROFILE_SETTINGS_PRIVACY_LICENSES_EXIT_DESC,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppTheme.blackTextColor.withOpacity(.75),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    title: ButtonClick(
                      title: Messages.PROFILE_SETTINGS_PRIVACY_LICENSES_BUTTON,
                      textColor: AppTheme.whiteTextColor,
                      backColor: AppTheme.redBackColor,
                    ),
                  ),
                  ListTile(
                    title: ButtonClick(
                      title: Messages.PROFILE_SETTINGS_PRIVACY_LICENSES_CANCEL,
                      textColor: AppTheme.blackTextColor.withOpacity(.75),
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
