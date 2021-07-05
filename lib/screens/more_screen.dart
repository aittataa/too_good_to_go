import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:too_good_to_go/pages/more_items/blog_details.dart';
import 'package:too_good_to_go/pages/more_items/help_details.dart';
import 'package:too_good_to_go/pages/more_items/learn_details.dart';
import 'package:too_good_to_go/pages/more_items/orders_details.dart';
import 'package:too_good_to_go/pages/more_items/payment_details.dart';
import 'package:too_good_to_go/pages/more_items/profile_details.dart';
import 'package:too_good_to_go/pages/more_items/terms_details.dart';

import '../constant/constant.dart';
import '../widgets/back_icon.dart';

class MoreScreen extends StatefulWidget {
  final int index;
  final String title;
  const MoreScreen({this.index, this.title});
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  int index;
  String title;
  @override
  void initState() {
    index = widget.index;
    title = widget.title;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
        title: Text("$title", style: Constant.appBarStyle),
      ),
      body: PageView(
        controller: PageController(initialPage: index),
        physics: NeverScrollableScrollPhysics(),
        children: [
          ProfileDetails(),
          OrdersDetails(),
          PaymentDetails(),
          BlogDetails(),
          TermsDetails(),
          HelpDetails(),
          LearnDetails(),
        ],
      ),
    );
  }
}
