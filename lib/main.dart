import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/screens/initial_screen.dart';
import 'package:too_good_to_go/widgets/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: AppTheme.transparentColor,
      systemNavigationBarDividerColor: AppTheme.transparentColor,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarColor: AppTheme.transparentColor,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(TooGoodToGo());
}

class TooGoodToGo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: Messages.APP_TITLE,
      color: AppTheme.mainColor,
      theme: ThemeData(
        primaryColor: AppTheme.lightMainColor,
        scaffoldBackgroundColor: AppTheme.backColor,
      ),
      home: InitialScreen(),
      //home: Splash(),
      //home: RegisterScreen(),
    );
  }
}
