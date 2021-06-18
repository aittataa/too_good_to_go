import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SharedFunctions {
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
