import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/constant/shared_functions.dart';
import 'package:too_good_to_go/screens/initial_screen.dart';
import 'package:too_good_to_go/screens/register_screen.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/checked_box.dart';
import 'package:too_good_to_go/widgets/divider_line.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';
import 'package:too_good_to_go/widgets/progress_bar.dart';
import 'package:too_good_to_go/widgets/social_connection.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/text_box.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  ///
  bool inAsyncCall = false;

  ///
  bool obscureText = true;
  bool iAllow = true;

  ///
  bool isEmail = true;
  bool isPassword = true;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController(text: Constant.userLogin.email);
    passwordController = TextEditingController(text: Constant.userLogin.password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProgressBar(
        inAsyncCall: inAsyncCall,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: Constant.screenHeight * .34,
              child: ExpandedLogo(),
            ),
            ListTile(
              title: TitleText(
                title: Messages.LOGIN_SCREEN_TITLE,
              ),
            ),
            ListTile(
              title: TextBox(
                onChanged: (value) {
                  setState(() => isEmail = GetUtils.isEmail(value));
                },
                controller: emailController,
                hint: Messages.TEXT_BOX_EMAIL_TITLE,
                icon: CupertinoIcons.mail_solid,
                keyboardType: TextInputType.emailAddress,
                suffixIcon: Icon(
                  isEmail ? CupertinoIcons.checkmark_circle_fill : CupertinoIcons.clear_circled_solid,
                  color: isEmail ? AppTheme.lightMainColor : AppTheme.redIconColor,
                ),
              ),
            ),
            ListTile(
              title: TextBox(
                onChanged: (value) {
                  setState(() => isPassword = GetUtils.isGreaterThan(value, 8));
                },
                controller: passwordController,
                hint: Messages.TEXT_BOX_PASSWORD_TITLE,
                icon: CupertinoIcons.lock_shield_fill,
                keyboardType: TextInputType.visiblePassword,
                obscureText: obscureText,
                suffixIcon: GestureDetector(
                  onTap: () => setState(() => obscureText = !obscureText),
                  child: Icon(
                    Icons.remove_red_eye,
                    color: obscureText ? AppTheme.blackIconColor.withOpacity(.25) : AppTheme.lightMainColor,
                  ),
                ),
              ),
            ),
            ListTile(
              dense: true,
              trailing: SubtitleText(
                subtitle: Messages.FORGET_PASSWORD_TEXT,
                color: AppTheme.blackTextColor.withOpacity(.75),
                textAlign: TextAlign.end,
              ),
            ),
            ListTile(
              title: ButtonClick(
                onPressed: iAllow
                    ? () {
                        FocusScope.of(context).unfocus();
                        isEmail = GetUtils.isEmail(emailController.text.trim());
                        isPassword = GetUtils.isLengthGreaterThan(passwordController.text.trim(), 8);
                        if (isEmail && isPassword) {
                          setState(() => {inAsyncCall = true});
                          Get.offAll(() => InitialScreen());
                        } else {
                          SharedFunctions.snackBar(
                            title: "Identification Incorrect",
                            message: "Email or Password is Incorrect, Please Try Again",
                          );
                        }
                      }
                    : null,
                title: Messages.LOGIN_BUTTON_TEXT,
                textColor: AppTheme.whiteTextColor,
                backColor: iAllow ? AppTheme.mainColor : AppTheme.blackBackColor.withOpacity(.25),
              ),
            ),
            DividerLine(),
            ListTile(
              dense: true,
              leading: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: CheckedBox(
                  size: 16,
                  state: iAllow,
                  color: iAllow ? null : AppTheme.redBorderColor,
                  onTap: () {
                    setState(() => {iAllow = !iAllow});
                  },
                ),
              ),
              title: SubtitleText(
                subtitle: Messages.LOGIN_CONDITION_TEXT,
                color: AppTheme.blackTextColor.withOpacity(.75),
                textAlign: TextAlign.start,
              ),
            ),
            DividerLine(),
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
                        onPressed: () => Get.offAll(() => InitialScreen()),
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
                        onPressed: () => Get.offAll(() => InitialScreen()),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () => Get.offAll(() => RegisterScreen()),
              title: SubtitleText(
                subtitle: Messages.NEW_ACCOUNT_TEXT,
                color: AppTheme.blackTextColor.withOpacity(.75),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
