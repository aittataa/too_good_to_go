import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/display_item/second_shape.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class DisplayBar extends StatelessWidget {
  final String title;
  const DisplayBar({this.title});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              TitleText(
                title: "Sorted by : ",
                textAlign: TextAlign.start,
              ),
              Expanded(
                child: TitleText(
                  title: "$title",
                  color: AppTheme.mainColor,
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ),
        subtitle: GridView.builder(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(10),
          scrollDirection: Axis.vertical,
          gridDelegate: Constant.gridDelegate(
            crossAxisCount: 1,
            childAspectRatio: 1.5,
          ),
          itemCount: Constant.itemCount,
          itemBuilder: (context, index) {
            return SecondShape();
          },
        ),
      ),
    );
  }
}
