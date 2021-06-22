import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/screens/more_details.dart';
import 'package:too_good_to_go/widgets/divider_line.dart';
import 'package:too_good_to_go/widgets/menu_item.dart';
import 'package:too_good_to_go/widgets/page_title.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';

class MorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          PageTitle(title: Messages.LABEL_MORE),
          DividerLine(),
          MenuItem(
            icon: CupertinoIcons.profile_circled,
            text: Messages.MORE_PROFILE_TITLE,
            onTap: () => Get.to(
              () => MoreDetails(index: 0, title: Messages.MORE_PROFILE_TITLE),
            ),
          ),
          DividerLine(),
          MenuItem(
            icon: CupertinoIcons.doc_text_fill,
            text: Messages.MORE_ORDERS_TITLE,
            onTap: () => Get.to(
              () => MoreDetails(index: 1, title: Messages.MORE_ORDERS_TITLE),
            ),
          ),
          DividerLine(),
          MenuItem(
            icon: CupertinoIcons.creditcard_fill,
            text: Messages.MORE_PAYMENT_TITLE,
            onTap: () => Get.to(
              () => MoreDetails(index: 2, title: Messages.MORE_PAYMENT_TITLE),
            ),
          ),
          DividerLine(),
          MenuItem(
            icon: CupertinoIcons.news_solid,
            text: Messages.MORE_BLOG_TITLE,
            onTap: () => Get.to(
              () => MoreDetails(index: 3, title: Messages.MORE_BLOG_TITLE),
            ),
          ),
          DividerLine(),
          MenuItem(
            icon: CupertinoIcons.checkmark_alt_circle_fill,
            text: Messages.MORE_TERMS_TITLE,
            onTap: () => Get.to(
              () => MoreDetails(index: 4, title: Messages.MORE_TERMS_TITLE),
            ),
          ),
          DividerLine(),
          MenuItem(
            icon: CupertinoIcons.helm,
            text: Messages.MORE_HELP_TITLE,
            onTap: () => Get.to(
              () => MoreDetails(index: 5, title: Messages.MORE_HELP_TITLE),
            ),
          ),
          DividerLine(height: 10, color: AppTheme.transparentColor),
          ListTile(
            subtitle: SubtitleText(
              subtitle: Messages.MORE_SUBTITLE_1,
              color: AppTheme.blackTextColor.withOpacity(0.75),
            ),
          ),
          ListTile(
            onTap: () => Get.to(
              () => MoreDetails(index: 6, title: "Join ${Messages.APP_TITLE}"),
            ),
            title: SubtitleText(
              subtitle: Messages.MORE_SUBTITLE_2,
              color: AppTheme.mainColor,
            ),
          ),
        ],
      ),
    );
  }
}
