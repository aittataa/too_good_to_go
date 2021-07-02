import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/screens/login_screen.dart';
import 'package:too_good_to_go/widgets/bounce_point.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      // nextScreen: InitialScreen(),
      // nextScreen: RegisterScreen(),
      nextScreen: LoginScreen(),
      splash: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ExpandedLogo(flex: 2),
            // BouncePoint(),
            Expanded(child: BouncePoint()),
          ],
        ),
      ),
      curve: Constant.curve,
      backgroundColor: AppTheme.mainBackColor,
      splashTransition: SplashTransition.fadeTransition,
      animationDuration: Constant.duration,
      splashIconSize: double.infinity,
    );
  }
}
