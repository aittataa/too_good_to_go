import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/screens/profile_screen.dart';
import 'package:too_good_to_go/widgets/divider_line.dart';
import 'package:too_good_to_go/widgets/menu_item.dart';
import 'package:too_good_to_go/widgets/page_title.dart';

class MorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          PageTitle(title: Messages.LABEL_MORE),
          SizedBox(height: 20),
          MenuItem(
            icon: CupertinoIcons.person_crop_circle,
            text: Messages.MORE_PROFILE_TITLE,
            onTap: () {
              Get.to(() => ProfileScreen());
            },
          ),
          DividerLine(),
          MenuItem(
            icon: CupertinoIcons.doc_text_fill,
            text: Messages.MORE_ORDERS_TITLE,
          ),
          DividerLine(),
          MenuItem(
            icon: CupertinoIcons.creditcard_fill,
            text: Messages.MORE_PAYMENT_TITLE,
          ),
          DividerLine(),
          MenuItem(
            icon: CupertinoIcons.news_solid,
            text: Messages.MORE_BLOG_TITLE,
          ),
          DividerLine(),
          MenuItem(
            icon: CupertinoIcons.checkmark_alt_circle_fill,
            text: Messages.MORE_TERMS_TITLE,
          ),
          DividerLine(),
          MenuItem(
            icon: CupertinoIcons.helm,
            text: Messages.MORE_HELP_TITLE,
          ),
          DividerLine(),
        ],
      ),
    );
  }
}
