import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/button_click.dart';
import 'package:too_good_to_go/widgets/category_item.dart';
import 'package:too_good_to_go/widgets/checked_box.dart';
import 'package:too_good_to_go/widgets/divider_line.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25),
      color: AppTheme.whiteBackColor,
      child: Column(
        children: [
          Container(
            color: AppTheme.whiteBackColor,
            child: ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero,
              title: SubtitleText(
                subtitle: "Filter",
              ),
              trailing: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  CupertinoIcons.clear_thick,
                  color: AppTheme.blackIconColor.withOpacity(.5),
                ),
              ),
            ),
          ),
          DividerLine(color: AppTheme.darkColor.withOpacity(.25)),
          Expanded(
            child: Container(
              color: AppTheme.backColor,
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.all(15),
                    title: TitleText(
                      title: Messages.FILTER_PAGE_TITLE_1,
                      textAlign: TextAlign.start,
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: SubtitleText(
                        subtitle: Messages.FILTER_PAGE_DESC,
                        textAlign: TextAlign.start,
                        color: AppTheme.blackTextColor.withOpacity(.75),
                      ),
                    ),
                    trailing: CheckedBox(
                      state: state,
                      onTap: () {
                        setState(() {
                          state = !state;
                        });
                      },
                    ),
                  ),
                  DividerLine(color: AppTheme.darkColor.withOpacity(.75), value: 15),
                  ListTile(
                    dense: true,
                    title: TitleText(
                      title: "Category",
                      textAlign: TextAlign.start,
                    ),
                  ),
                  ListTile(
                    dense: true,
                    title: SubtitleText(
                      subtitle: "Show All",
                      textAlign: TextAlign.start,
                      color: AppTheme.mainColor,
                    ),
                    trailing: Icon(
                      CupertinoIcons.checkmark,
                      color: AppTheme.mainColor,
                    ),
                  ),
                  CategoryItem(
                    image: Messages.MEALS_ICON,
                    label: "Meals",
                  ),
                  CategoryItem(
                    image: Messages.BREAD_PASTRIES_ICON,
                    label: "Bread & Pastries",
                  ),
                  CategoryItem(
                    image: Messages.GROCERIES_ICON,
                    label: "Groceries",
                  ),
                  CategoryItem(
                    image: Messages.OTHER_ICON,
                    label: "Other",
                  ),
                  DividerLine(color: AppTheme.darkColor.withOpacity(.75), value: 15),
                  ListTile(
                    dense: true,
                    title: TitleText(
                      title: "Diet Preferences",
                      textAlign: TextAlign.start,
                    ),
                  ),
                  ListTile(
                    dense: true,
                    title: SubtitleText(
                      subtitle: "None",
                      textAlign: TextAlign.start,
                      color: AppTheme.mainColor,
                    ),
                    trailing: Radio<bool>(
                      onChanged: (value) {},
                      value: true,
                      groupValue: true,
                    ),
                  ),
                  ListTile(
                    dense: true,
                    title: SubtitleText(
                      subtitle: "Vegetarian",
                      textAlign: TextAlign.start,
                      color: AppTheme.blackTextColor.withOpacity(.75),
                    ),
                    trailing: Radio<bool>(
                      onChanged: (value) {},
                      value: true,
                      groupValue: false,
                    ),
                  ),
                  ListTile(
                    dense: true,
                    title: SubtitleText(
                      subtitle: "Vegan",
                      textAlign: TextAlign.start,
                      color: AppTheme.blackTextColor.withOpacity(.75),
                    ),
                    trailing: Radio<bool>(
                      onChanged: (value) {},
                      value: true,
                      groupValue: false,
                    ),
                  ),
                  DividerLine(color: AppTheme.darkColor.withOpacity(.75), value: 15),
                  ListTile(
                    dense: true,
                    title: TitleText(
                      title: "Pick-up Time",
                      textAlign: TextAlign.start,
                    ),
                  ),
                  ListTile(
                    dense: true,
                    title: SubtitleText(
                      subtitle: "All Day",
                      textAlign: TextAlign.start,
                      color: AppTheme.mainColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          DividerLine(color: AppTheme.darkColor.withOpacity(.25)),
          ListTile(
            dense: true,
            title: Row(
              children: [
                Expanded(
                  flex: 10,
                  child: ButtonClick(
                    title: "Clear all",
                    textColor: AppTheme.whiteTextColor,
                    backColor: AppTheme.redBackColor,
                  ),
                ),
                Expanded(child: SizedBox(width: 1)),
                Expanded(
                  flex: 10,
                  child: ButtonClick(
                    title: "Apply",
                    textColor: AppTheme.whiteTextColor,
                    backColor: AppTheme.mainColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
