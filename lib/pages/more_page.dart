import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/screens/blog_screen.dart';
import 'package:too_good_to_go/screens/help_screen.dart';
import 'package:too_good_to_go/screens/orders_screen.dart';
import 'package:too_good_to_go/screens/payment_screen.dart';
import 'package:too_good_to_go/screens/profile_screen.dart';
import 'package:too_good_to_go/screens/terms_screen.dart';
import 'package:too_good_to_go/widgets/divider_line.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';
import 'package:too_good_to_go/widgets/menu_item.dart';
import 'package:too_good_to_go/widgets/page_title.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';

class MorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          PageTitle(title: Messages.LABEL_MORE),
          SizedBox(height: 20),
          MenuItem(
            icon: CupertinoIcons.profile_circled,
            text: Messages.MORE_PROFILE_TITLE,
            onTap: () {
              Get.to(() => ProfileScreen());
            },
          ),
          DividerLine(),
          MenuItem(
            icon: CupertinoIcons.doc_text_fill,
            text: Messages.MORE_ORDERS_TITLE,
            onTap: () {
              Get.to(() => OrdersScreen());
            },
          ),
          DividerLine(),
          MenuItem(
            icon: CupertinoIcons.creditcard_fill,
            text: Messages.MORE_PAYMENT_TITLE,
            onTap: () {
              Get.to(() => PaymentScreen());
            },
          ),
          DividerLine(),
          MenuItem(
            icon: CupertinoIcons.news_solid,
            text: Messages.MORE_BLOG_TITLE,
            onTap: () {
              Get.to(() => BlogScreen());
            },
          ),
          DividerLine(),
          MenuItem(
            icon: CupertinoIcons.checkmark_alt_circle_fill,
            text: Messages.MORE_TERMS_TITLE,
            onTap: () {
              Get.to(() => TermsScreen());
            },
          ),
          DividerLine(),
          MenuItem(
            icon: CupertinoIcons.helm,
            text: Messages.MORE_HELP_TITLE,
            onTap: () {
              Get.to(() => HelpScreen());
            },
          ),
          DividerLine(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ExpandedLogo(),
                ListTile(
                  title: SubtitleText(
                    subtitle: Messages.MORE_SUBTITLE_1,
                    color: AppTheme.blackTextColor.withOpacity(0.75),
                  ),
                ),
                ListTile(
                  title: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      SubtitleText(
                        subtitle: Messages.MORE_SUBTITLE_2,
                        color: AppTheme.mainColor,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
