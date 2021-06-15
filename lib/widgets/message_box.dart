import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class MessageBox extends StatelessWidget {
  final Function onPressed;
  const MessageBox({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppTheme.backColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      content: SizedBox(
        height: 225,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ListTile(
              title: TitleText(
                title: "We'll send your data report to this email",
              ),
            ),
            ListTile(
              title: SubtitleText(
                subtitle: "contact@domain.com",
                color: AppTheme.blackTextColor.withOpacity(0.75),
              ),
            ),
            ListTile(
              title: ButtonClick(
                onPressed: onPressed,
                title: "Send data report".toUpperCase(),
                textColor: AppTheme.whiteTextColor,
                backColor: AppTheme.mainColor,
              ),
            ),
            ListTile(
              title: ButtonClick(
                onPressed: () => Navigator.pop(context),
                title: "Cancel".toUpperCase(),
                textColor: AppTheme.blackTextColor.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
