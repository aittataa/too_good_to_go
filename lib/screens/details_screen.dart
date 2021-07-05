import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/back_icon.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            leading: BackIcon(),
            flexibleSpace: FlexibleSpaceBar(
              title: TitleText(title: "Product name"),
              background: Image.asset(Messages.LOGO_ICON),
            ),
          ),
        ],
      ),
    );
  }
}
