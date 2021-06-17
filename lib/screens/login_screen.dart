import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: Constant.screenHeight * .45, child: ExpandedLogo()),
            ListTile(
              dense: true,
              title: TitleText(
                title: "Save delicious food and fight food waste",
              ),
            ),
            ListTile(
              dense: true,
              title: TextBox(
                hint: "Email",
                icon: CupertinoIcons.mail_solid,
              ),
            ),
            ListTile(
              dense: true,
              title: TextBox(
                hint: "Password",
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
              horizontalTitleGap: 0,
              leading: Checkbox(
                onChanged: (value) {},
                value: true,
                activeColor: AppTheme.mainColor,
              ),
              title: SubtitleText(
                subtitle: "Remember me",
                textAlign: TextAlign.start,
                color: AppTheme.blackTextColor.withOpacity(.75),
              ),
              trailing: SubtitleText(
                subtitle: "Forget Password",
                color: AppTheme.blackTextColor.withOpacity(.75),
              ),
            ),
            ListTile(
              dense: true,
              title: ButtonClick(
                title: "LOG IN",
                textColor: AppTheme.whiteTextColor,
                backColor: AppTheme.mainColor,
              ),
            ),
            ListTile(
              title: SubtitleText(
                subtitle: " - OR - ",
                color: AppTheme.blackTextColor.withOpacity(.75),
              ),
            ),
            ListTile(
              dense: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialConnection(
                    image: Messages.GOOGLE_ICON,
                  ),
                  SocialConnection(
                    image: Messages.FACEBOOK_ICON,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            ListTile(
              title: SubtitleText(
                subtitle: "Create New Account.",
                color: AppTheme.blackTextColor.withOpacity(.75),
              ),
            ),
          ],
        ),
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

class TextBox extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String hint;
  final IconData icon;
  final Widget suffixIcon;
  const TextBox({
    this.controller,
    this.hint,
    this.icon,
    this.suffixIcon,
    this.obscureText = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        cursorColor: AppTheme.mainColor,
        style: TextStyle(
          color: AppTheme.blackTextColor.withOpacity(.75),
          fontWeight: FontWeight.bold,
        ),
        obscureText: obscureText,
        obscuringCharacter: "●",
        //obscuringCharacter: "⬤",
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: AppTheme.lightMainColor,
            size: 27,
          ),
          suffixIcon: suffixIcon,
          hintText: hint,
          hintStyle: TextStyle(
            color: AppTheme.blackTextColor.withOpacity(.5),
            fontWeight: FontWeight.bold,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              width: 1.5,
              color: AppTheme.lightMainColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              width: 2.5,
              color: AppTheme.lightMainColor,
            ),
          ),
        ),
      ),
    );
  }
}
