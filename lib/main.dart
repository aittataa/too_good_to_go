import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/screens/initial_screen.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: AppTheme.transparentColor,
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
      // home: InitialScreen(),
      home: AnimatedSplashScreen(
        nextScreen: InitialScreen(),
        splash: Column(
          children: [
            ExpandedLogo(
              flex: 2,
            ),
            Expanded(
              child: SpinKitThreeBounce(
                size: 64,
                color: AppTheme.lightMainColor,
                duration: Constant.duration,
              ),
            ),
          ],
        ),
        curve: Constant.curve,
        backgroundColor: AppTheme.backColor,
        splashTransition: SplashTransition.fadeTransition,
        animationDuration: Constant.duration,
        splashIconSize: double.infinity,
      ),
    );
  }
}
