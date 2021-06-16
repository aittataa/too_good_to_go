import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/back_button.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
        title: Text(
          Messages.MORE_BLOG_TITLE,
          style: TextStyle(color: AppTheme.whiteTextColor),
        ),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            ListTile(
              title: TitleText(
                title: Messages.MORE_BLOG_MAIN_TITLE,
                textAlign: TextAlign.start,
              ),
              subtitle: SubtitleText(
                subtitle: Messages.MORE_BLOG_DESC,
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
