import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/screens/initial_screen.dart';
import 'package:too_good_to_go/screens/login_screen.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/text_box.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ExpandedLogo(),
          ListTile(
            dense: true,
            title: TitleText(
              title: Messages.REGISTER_SCREEN_TITLE,
            ),
          ),
          ListTile(
            dense: true,
            title: TextBox(
              hint: Messages.TEXT_BOX_NAME_TITLE,
              icon: CupertinoIcons.person_crop_circle,
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
            dense: true,
            title: ButtonClick(
              onPressed: () => Get.offAll(() => InitialScreen()),
              title: Messages.SIGN_IN_BUTTON_TEXT,
              textColor: AppTheme.whiteTextColor,
              backColor: AppTheme.mainColor,
            ),
          ),
          ListTile(
            onTap: () => Get.offAll(() => LoginScreen()),
            title: SubtitleText(
              subtitle: Messages.HAVE_ACCOUNT_TEXT,
              color: AppTheme.blackTextColor.withOpacity(.75),
            ),
          ),
        ],
      ),
    );
  }
}