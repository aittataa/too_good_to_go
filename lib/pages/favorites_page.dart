import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/pages/favorites_item/favorites_body.dart';
import 'package:too_good_to_go/widgets/page_title.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          PageTitle(title: Messages.LABEL_FAVORITES),
          FavoritesBody(state: true),
        ],
      ),
    );
  }
}
