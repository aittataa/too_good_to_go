import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/back_icon.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
        title: Text(
          Messages.MORE_TERMS_TITLE,
          style: Constant.appBarStyle,
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: TitleText(
              title: Messages.MORE_TERMS_TITLE,
              textAlign: TextAlign.start,
            ),
            subtitle: SubtitleText(
              subtitle: "${Messages.APP_TITLE} / ${Messages.MORE_TERMS_TITLE}",
              color: AppTheme.blackTextColor.withOpacity(.75),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
