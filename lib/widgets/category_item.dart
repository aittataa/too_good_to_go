import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';

class CategoryItem extends StatelessWidget {
  final String image;
  final String label;
  const CategoryItem({this.image = "", this.label = ""});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      minLeadingWidth: 0,
      leading: Image.asset(
        "$image",
        color: AppTheme.mainColor,
        width: 20,
        height: 20,
      ),
      title: SubtitleText(
        subtitle: "$label",
        color: AppTheme.blackTextColor.withOpacity(.75),
        textAlign: TextAlign.start,
      ),
    );
  }
}
