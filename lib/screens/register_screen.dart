import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/constant/shared_functions.dart';
import 'package:too_good_to_go/screens/initial_screen.dart';
import 'package:too_good_to_go/screens/login_screen.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/checked_box.dart';
import 'package:too_good_to_go/widgets/divider_line.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/text_box.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  ///
  bool obscureText = true;
  bool iAllow = true;
  bool iAgree = true;

  ///
  bool isUsername = true;
  bool isEmail = true;
  bool isPassword = true;

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController(text: Constant.userLogin.name);
    emailController = TextEditingController(text: Constant.userLogin.email);
    passwordController = TextEditingController(text: Constant.userLogin.password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: Constant.screenHeight * .4,
            child: ExpandedLogo(),
          ),
          ListTile(
            dense: true,
            title: TitleText(
              title: Messages.REGISTER_SCREEN_TITLE,
            ),
          ),
          ListTile(
            title: TextBox(
              onChanged: (value) {
                setState(() => isUsername = GetUtils.isUsername(value));
              },
              controller: usernameController,
              hint: Messages.TEXT_BOX_NAME_TITLE,
              icon: CupertinoIcons.person_crop_circle,
              keyboardType: TextInputType.name,
              suffixIcon: Icon(
                isUsername ? Icons.check_circle : Icons.cancel,
                color: isUsername ? AppTheme.lightMainColor : AppTheme.redIconColor,
              ),
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
                isEmail ? Icons.check_circle : Icons.cancel,
                color: isEmail ? AppTheme.lightMainColor : AppTheme.redIconColor,
              ),
            ),
          ),
          ListTile(
            title: TextBox(
              onChanged: (value) {
                isPassword = GetUtils.isGreaterThan(value, 8);
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
          DividerLine(height: 10, color: AppTheme.transparentColor),
          ListTile(
            dense: true,
            leading: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CheckedBox(
                size: 16,
                state: iAllow,
                onTap: () => setState(() => iAllow = !iAllow),
              ),
            ),
            title: SubtitleText(
              subtitle: Messages.LOGIN_CONDITION,
              color: AppTheme.blackTextColor.withOpacity(.75),
              textAlign: TextAlign.start,
            ),
          ),
          ListTile(
            dense: true,
            leading: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CheckedBox(
                size: 16,
                state: iAgree,
                onTap: () => setState(() => iAgree = !iAgree),
              ),
            ),
            title: SubtitleText(
              subtitle: Messages.REGISTER_CONDITION,
              color: AppTheme.blackTextColor.withOpacity(.75),
              textAlign: TextAlign.start,
            ),
          ),
          DividerLine(height: 10, color: AppTheme.transparentColor),
          ListTile(
            dense: true,
            title: ButtonClick(
              onPressed: !iAllow || !iAgree
                  ? null
                  : () {
                      FocusScope.of(context).unfocus();
                      if (isUsername && isEmail && isPassword) {
                        Get.offAll(() => InitialScreen());
                      } else {
                        SharedFunctions.snackBar(
                          title: "Identification Incorrect",
                          message: "Something wrong check you information again",
                        );
                      }
                    },
              title: Messages.SIGN_IN_BUTTON_TEXT,
              textColor: AppTheme.whiteTextColor,
              backColor: (iAllow && iAgree) ? AppTheme.mainColor : AppTheme.blackBackColor.withOpacity(.25),
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
