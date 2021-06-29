import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/display_item/second_shape.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';
import 'package:too_good_to_go/widgets/page_title.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

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

class FavoritesBody extends StatelessWidget {
  final bool state;
  const FavoritesBody({this.state});

  @override
  Widget build(BuildContext context) {
    if (state) {
      return Expanded(child: DisplayItem());
    } else {
      return Expanded(
        child: Column(
          children: [
            ExpandedLogo(),
            ListTile(
              title: TitleText(title: Messages.FAVORITES_TITLE),
            ),
            ListTile(
              subtitle: SubtitleText(
                subtitle: Messages.FAVORITES_SUBTITLE,
                color: AppTheme.blackTextColor.withOpacity(.75),
              ),
            ),
            ListTile(
              title: ButtonClick(
                onPressed: () {},
                title: Messages.FIND_STORE_BUTTON,
                textColor: AppTheme.whiteTextColor,
                backColor: AppTheme.mainColor,
              ),
            ),
          ],
        ),
      );
    }
  }
}

class DisplayItem extends StatelessWidget {
  final String title;
  const DisplayItem({this.title});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(10),
      scrollDirection: Axis.vertical,
      gridDelegate: Constant.gridDelegate(
        crossAxisCount: 1,
        childAspectRatio: 1.5,
      ),
      itemCount: Constant.itemCount - 5,
      itemBuilder: (context, index) {
        return SecondShape(state: true);
      },
    );
  }
}
