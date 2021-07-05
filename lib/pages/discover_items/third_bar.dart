import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/display_item/third_shape.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class ThirdBar extends StatelessWidget {
  final String title;
  const ThirdBar({this.title});
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
          child: GridView.builder(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(10),
            scrollDirection: Axis.horizontal,
            gridDelegate: Constant.gridDelegate(
              crossAxisCount: 1,
              childAspectRatio: 1.25,
            ),
            itemCount: Constant.itemCount,
            itemBuilder: (context, index) {
              return ThirdShape();
            },
          ),
        ),
      ),
    );
  }
}
