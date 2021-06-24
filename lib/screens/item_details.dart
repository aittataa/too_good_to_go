import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/constant/shared_functions.dart';
import 'package:too_good_to_go/screens/login_screen.dart';
import 'package:too_good_to_go/widgets/back_icon.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/divider_line.dart';
import 'package:too_good_to_go/widgets/edit_text.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';
import 'package:too_good_to_go/widgets/message_box.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class ItemDetails extends StatelessWidget {
  final int index;
  final String title;
  const ItemDetails({Key key, this.index, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
        title: Text("$title", style: Constant.appBarStyle),
      ),
      body: PageView(
        controller: PageController(initialPage: index),
        physics: NeverScrollableScrollPhysics(),
        children: [
          /// TODO : Unlock Hidden Stores
          SizedBox(
            child: Column(
              children: [
                ExpandedLogo(),
                ListTile(
                  title: TitleText(
                    title: Messages.PROFILE_SETTINGS_HIDDEN_STORES_TITLE,
                    textAlign: TextAlign.start,
                  ),
                ),
                ListTile(
                  title: SubtitleText(
                    subtitle: Messages.PROFILE_SETTINGS_HIDDEN_STORES_SUBTITLE,
                    color: AppTheme.blackTextColor.withOpacity(.75),
                    textAlign: TextAlign.start,
                  ),
                ),
                EditText(
                  controller: TextEditingController(),
                  hintText: Messages.PROFILE_SETTINGS_HIDDEN_STORES_HINT,
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ButtonClick(
                      title: Messages.PROFILE_SETTINGS_HIDDEN_STORES_BUTTON_VALID,
                      textColor: AppTheme.whiteTextColor,
                      backColor: AppTheme.mainColor,
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// TODO : Privacy Policy
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

          /// TODO : Licences
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

          /// TODO : Delete Account
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ExpandedLogo(),
                ListTile(
                  dense: true,
                  title: TitleText(title: Messages.PROFILE_SETTINGS_PRIVACY_LICENSES_EXIT_TITLE),
                ),
                ListTile(
                  subtitle: SubtitleText(
                    subtitle: Messages.PROFILE_SETTINGS_PRIVACY_LICENSES_EXIT_DESC,
                    color: AppTheme.blackTextColor.withOpacity(.75),
                  ),
                ),
                DividerLine(height: 10, color: AppTheme.transparentColor),
                ListTile(
                  title: ButtonClick(
                    onPressed: () => SharedFunctions.loadMessageBox(
                      context,
                      screen: MessageBox(
                        onPressed: () => Get.offAll(() => LoginScreen()),
                        title: Messages.PROFILE_SETTINGS_PRIVACY_LICENSES_DELETE_MESSAGE,
                        acceptTitle: Messages.PROFILE_SETTINGS_PRIVACY_LICENSES_BUTTON,
                        cancelTitle: Messages.PROFILE_SETTINGS_PRIVACY_LICENSES_CANCEL,
                      ),
                    ),
                    title: Messages.PROFILE_SETTINGS_PRIVACY_LICENSES_BUTTON,
                    textColor: AppTheme.whiteTextColor,
                    backColor: AppTheme.redBackColor,
                  ),
                ),
                ListTile(
                  title: ButtonClick(
                    onPressed: () => Navigator.pop(context),
                    title: Messages.PROFILE_SETTINGS_PRIVACY_LICENSES_CANCEL,
                    textColor: AppTheme.blackTextColor.withOpacity(.75),
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
