import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class SharedFunctions {
  static animateToPage(PageController controller, int index) {
    controller.jumpToPage(index);
    //controller.animateToPage(
    //  index,
    //  duration: Constant.duration,
    //  curve: Constant.curve,
    //);
  }

  static snackBar({String title, String message}) {
    return Get.snackbar(
      title,
      message,
      backgroundColor: AppTheme.redBackColor,
      titleText: Text(
        title,
        style: TextStyle(
          color: AppTheme.blackTextColor.withOpacity(.75),
          fontWeight: FontWeight.w900,
        ),
      ),
      messageText: Text(
        message,
        style: TextStyle(
          color: AppTheme.blackTextColor.withOpacity(.5),
          fontWeight: FontWeight.bold,
        ),
      ),
      icon: Icon(
        Icons.error,
        color: AppTheme.redIconColor.withAlpha(255),
        size: 36,
      ),
      margin: EdgeInsets.all(10),
      snackStyle: SnackStyle.FLOATING,
    );
  }

  static launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw Exception("Couldn't Launch $url");
    }
  }

  static loadPage(context, {dynamic screen}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      enableDrag: false,
      builder: (context) => screen,
    );
  }

  static loadMessageBox(context, {dynamic screen}) {
    showDialog(
      context: context,
      builder: (context) => screen,
    );
  }
}
