import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/screens/initial_screen.dart';
import 'package:too_good_to_go/screens/register_screen.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/checked_box.dart';
import 'package:too_good_to_go/widgets/divider_line.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/text_box.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscureText = true;
  bool state = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: Constant.screenHeight * .34,
            child: ExpandedLogo(),
          ),
          ListTile(
            dense: true,
            title: TitleText(
              title: Messages.LOGIN_SCREEN_TITLE,
            ),
          ),
          ListTile(
            dense: true,
            title: TextBox(
              hint: Messages.TEXT_BOX_EMAIL_TITLE,
              icon: CupertinoIcons.mail_solid,
            ),
          ),
          ListTile(
            dense: true,
            title: TextBox(
              hint: Messages.TEXT_BOX_PASSWORD_TITLE,
              icon: CupertinoIcons.lock_shield_fill,
              obscureText: obscureText,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() => obscureText = !obscureText);
                },
                child: Icon(
                  Icons.remove_red_eye,
                  color: obscureText ? AppTheme.blackIconColor.withOpacity(.25) : AppTheme.lightMainColor,
                ),
              ),
            ),
          ),
          ListTile(
            leading: CheckedBox(
              size: 16,
              state: state,
              onTap: () {
                setState(() {
                  state = !state;
                });
              },
            ),
            title: SubtitleText(
              subtitle: Messages.REMEMBER_ME_TEXT,
              textAlign: TextAlign.start,
              color: AppTheme.blackTextColor.withOpacity(.75),
            ),
            trailing: SubtitleText(
              subtitle: Messages.FORGET_PASSWORD_TEXT,
              color: AppTheme.blackTextColor.withOpacity(.75),
            ),
          ),
          ListTile(
            dense: true,
            title: ButtonClick(
              onPressed: () => Get.offAll(() => InitialScreen()),
              title: Messages.LOGIN_BUTTON_TEXT,
              textColor: AppTheme.whiteTextColor,
              backColor: AppTheme.mainColor,
            ),
          ),
          DividerLine(height: 10, color: AppTheme.transparentColor),
          ListTile(
            dense: true,
            leading: CheckedBox(
              size: 16,
              state: state,
              onTap: () {
                setState(() {
                  state = !state;
                });
              },
            ),
            title: SubtitleText(
              subtitle: "I allow ${Messages.APP_TITLE} to store my email address and name according to our privacy policy",
              color: AppTheme.blackTextColor.withOpacity(.75),
              textAlign: TextAlign.start,
            ),
          ),
          DividerLine(height: 10, color: AppTheme.transparentColor),
          ListTile(
            title: SubtitleText(
              subtitle: Messages.OR_TEXT,
              color: AppTheme.blackTextColor.withOpacity(.75),
            ),
          ),
          ListTile(
            dense: true,
            contentPadding: EdgeInsets.zero,
            minVerticalPadding: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 50,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: SocialConnection(
                      image: Messages.GOOGLE_ICON,
                    ),
                  ),
                ),
                Expanded(child: SizedBox(width: 1)),
                Expanded(
                  flex: 50,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SocialConnection(
                      image: Messages.FACEBOOK_ICON,
                      color: AppTheme.facebookColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () => Get.offAll(() => RegisterScreen()),
            contentPadding: EdgeInsets.zero,
            title: SubtitleText(
              subtitle: Messages.NEW_ACCOUNT_TEXT,
              color: AppTheme.blackTextColor.withOpacity(.75),
            ),
          ),
        ],
      ),
    );
  }
}

class SocialConnection extends StatelessWidget {
  final String image;
  final Color color;
  const SocialConnection({
    this.image,
    this.color,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      elevation: 3,
      highlightElevation: 3,
      color: AppTheme.whiteBackColor,
      splashColor: AppTheme.transparentColor,
      shape: CircleBorder(),
      padding: EdgeInsets.all(10),
      child: Image.asset(
        image,
        width: 30,
        height: 30,
        color: color,
      ),
    );
  }
}
