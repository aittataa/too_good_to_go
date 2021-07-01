import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/display_item/second_shape.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class SecondBar extends StatelessWidget {
  final String title;
  const SecondBar({this.title});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListTile(
        dense: true,
        contentPadding: EdgeInsets.zero,
        title: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: TitleText(
                  title: "$title",
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: AppTheme.lightMainColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.chevron_right,
                  color: AppTheme.whiteIconColor,
                ),
              ),
            ],
          ),
        ),
        subtitle: Container(
          height: 300,
          child: PageView.builder(
            controller: PageController(viewportFraction: .9),
            physics: BouncingScrollPhysics(),
            itemCount: Constant.itemCount,
            itemBuilder: (context, index) {
              return SecondShape();
            },
          ),
        ),
      ),
    );
  }
}
