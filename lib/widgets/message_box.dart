import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class MessageBox extends StatelessWidget {
  final String title;
  final String acceptTitle;
  final String cancelTitle;
  final Function onPressed;
  const MessageBox({this.title, this.acceptTitle, this.cancelTitle, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(5),
      backgroundColor: AppTheme.backColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      content: Container(
        height: 175,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ListTile(
              title: TitleText(
                title: "$title",
              ),
            ),
            ListTile(
              title: ButtonClick(
                onPressed: onPressed,
                title: "$acceptTitle",
                textColor: AppTheme.whiteTextColor,
                backColor: AppTheme.redBackColor,
              ),
            ),
            ListTile(
              title: ButtonClick(
                onPressed: () => Navigator.pop(context),
                title: "$cancelTitle",
                textColor: AppTheme.blackTextColor.withOpacity(0.75),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
