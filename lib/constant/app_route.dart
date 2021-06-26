import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/screens/initial_screen.dart';
import 'package:too_good_to_go/screens/item_details.dart';
import 'package:too_good_to_go/screens/login_screen.dart';
import 'package:too_good_to_go/screens/more_items.dart';
import 'package:too_good_to_go/screens/profile_items.dart';
import 'package:too_good_to_go/screens/register_screen.dart';

class AppRoutes {
  static const Transition _transition = Transition.cupertino;
  static const SPLASH = '/splash_screen';
  static const LOGIN = '/login_screen';
  static const REGISTER = '/register_screen';
  static const INITIAL = '/initial_screen';
  static const PROFILE = '/profile_items';
  static const MORE = '/more_items';
  static const ITEM = '/item_details';

  static List<GetPage> pages = [
    GetPage(
      page: () => LoginScreen(),
      name: AppRoutes.LOGIN,
      title: AppRoutes.LOGIN,
      settings: RouteSettings(),
      maintainState: true,
      curve: Constant.curve,
      alignment: Alignment.center,
      transition: _transition,
    ),
    GetPage(
      page: () => RegisterScreen(),
      name: AppRoutes.REGISTER,
      transition: _transition,
    ),
    GetPage(
      page: () => InitialScreen(),
      name: AppRoutes.INITIAL,
      title: AppRoutes.INITIAL,
      settings: RouteSettings(),
      maintainState: true,
      curve: Constant.curve,
      alignment: Alignment.center,
      transition: _transition,
    ),
    GetPage(
      page: () => ProfileItems(),
      name: AppRoutes.PROFILE,
      transition: _transition,
    ),
    GetPage(
      page: () => MoreItems(),
      name: AppRoutes.MORE,
      transition: _transition,
    ),
    GetPage(
      page: () => ItemDetails(),
      name: AppRoutes.ITEM,
      transition: _transition,
    ),
    // GetPage(
    //   name: AppRoutes.SIGNUP,
    //   page: () => SignUpPage(),
    // ),
    // GetPage(
    //   name: AppRoutes.ACTIVATE,
    //   transition: Transition.cupertino,
    //   page: () => ActivatePage(),
    // ),
    // GetPage(
    //   name: AppRoutes.LOGIN,
    //   page: () => LoginPage(),
    // ),
    // GetPage(
    //   name: AppRoutes.HOME,
    //   page: () => HomePage(),
    // ),
    // GetPage(
    //   name: AppRoutes.REST_PASSWORD,
    //   transition: Transition.cupertino,
    //   page: () => ResetPasswordPage(),
    // ),
    // GetPage(
    //   name: AppRoutes.SET_PASSWORD,
    //   transition: Transition.cupertino,
    //   page: () => SetPasswordPage(),
    // ),
    // GetPage(
    //   name: AppRoutes.CHANGE_PROFILE_INFO,
    //   transition: Transition.cupertino,
    //   page: () => ChangeProfilePage(),
    // ),
    // GetPage(
    //   name: AppRoutes.CHANGE_PASSWORD,
    //   transition: Transition.cupertino,
    //   page: () => ChangePasswordPage(),
    // ),
    // GetPage(
    //   name: AppRoutes.EVENT_DETAIL,
    //   curve: Curves.easeInOut,
    //   transition: Transition.cupertino,
    //   page: () => EventDetailPage(),
    // ),
    // GetPage(
    //   name: AppRoutes.TICKET_SELECT,
    //   transition: Transition.cupertino,
    //   page: () => TicketSelectPage(),
    // ),
    // GetPage(
    //   name: AppRoutes.STRIPE_CHECKOUT,
    //   transition: Transition.cupertino,
    //   page: () => StripeCheckoutPage(),
    // ),
    // GetPage(
    //   name: AppRoutes.MY_TICKETS,
    //   transition: Transition.cupertino,
    //   page: () => MyTicketsPage(),
    // ),
    // GetPage(
    //   name: AppRoutes.SOCIETY_DETAIL,
    //   transition: Transition.cupertino,
    //   middlewares: [
    //     GetMiddleware(),
    //   ],
    //   page: () => SocietyDetailPage(),
    // ),
    // GetPage(
    //   name: AppRoutes.NEWS_PAGE,
    //   transition: Transition.cupertino,
    //   page: () => NewsPage(),
    // ),
    // GetPage(
    //   name: AppRoutes.REFUND_PAGE,
    //   transition: Transition.cupertino,
    //   page: () => RefundPage(),
    // ),
  ];
}
