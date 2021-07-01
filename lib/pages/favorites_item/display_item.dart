import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/display_item/second_shape.dart';

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
