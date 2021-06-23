import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/models/user.dart';

class Constant {
  //static int selectedIndex;
  //static int pageIndex;
  //static const int itemCount = 25;
  static const Duration duration = Duration(milliseconds: 1500);
  static const Curve curve = Curves.linearToEaseOut;
  static final double screenWidth = Get.size.width;
  static final double screenHeight = Get.size.height;

  static const TextStyle appBarStyle = TextStyle(
    color: AppTheme.whiteTextColor,
    fontWeight: FontWeight.bold,
  );

  static User userLogin = User(
    id: 1,
    name: "John Doe",
    email: "contact@domain.com",
    phone: "+212 600 000 000",
    city: "Casablanca",
  );

  static const List<String> titlesList = [
    Messages.LABEL_DISCOVER,
    Messages.LABEL_BROWSE,
    Messages.LABEL_FAVORITES,
    Messages.LABEL_MORE,
  ];

  static const List<String> cities = [
    "CASABLANCA",
    "MARRAKECK",
    "AGADIR",
    "TANGER",
    "TAMARA",
    "CASABLANCA",
    "MARRAKECK",
    "AGADIR",
    "TANGER",
    "TAMARA",
    "CASABLANCA",
    "MARRAKECK",
    "AGADIR",
    "TANGER",
    "TAMARA",
  ];

  static BoxShadow boxShadow = BoxShadow(
    color: AppTheme.darkColor.withOpacity(.25),
    blurRadius: 90,
    spreadRadius: 1,
  );

  static gridDelegate({int crossAxisCount = 1, double childAspectRatio = 1}) {
    return SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: crossAxisCount,
      childAspectRatio: childAspectRatio,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
    );
  }
}
