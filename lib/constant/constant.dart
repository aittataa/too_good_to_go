import 'package:flutter/material.dart';
import 'package:too_good_to_go/models/user.dart';

class Constant {
  static int selectedIndex;
  static int pageIndex;
  static const int itemCount = 25;
  static const Duration duration = Duration(milliseconds: 1500);
  static const Curve curve = Curves.linearToEaseOut;
  //static final double screenWidth = Get.size.width;
  //static final double screenHeight = Get.size.height;

  static User userLogin = User(
    id: 1,
    name: "John Doe",
    email: "contact@domain.com",
    phone: "+212 600 000 000",
    city: "Casablanca",
  );

  static const List<String> cities = [
    "Casablanca",
    "MARRAKECK",
    "AGADIR",
    "TANGER",
    "TAMARA",
    "Casablanca",
    "MARRAKECK",
    "AGADIR",
    "TANGER",
    "TAMARA",
    "Casablanca",
    "MARRAKECK",
    "AGADIR",
    "TANGER",
    "TAMARA",
  ];

  static const boxShadow = BoxShadow(
    color: Colors.black12,
    blurRadius: 90,
    spreadRadius: -15,
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
