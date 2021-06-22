import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constant/constant.dart';
import '../pages/more_details/blog_details.dart';
import '../pages/more_details/help_details.dart';
import '../pages/more_details/learn_details.dart';
import '../pages/more_details/orders_details.dart';
import '../pages/more_details/payment_details.dart';
import '../pages/more_details/profile_details.dart';
import '../pages/more_details/terms_details.dart';
import '../widgets/back_icon.dart';

class MoreDetails extends StatefulWidget {
  final int index;
  final String title;
  const MoreDetails({this.index, this.title});
  @override
  _MoreDetailsState createState() => _MoreDetailsState();
}

class _MoreDetailsState extends State<MoreDetails> {
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
