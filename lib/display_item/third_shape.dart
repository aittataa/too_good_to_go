import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class ThirdShape extends StatelessWidget {
  final bool state;
  const ThirdShape({this.state = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppTheme.whiteBackColor,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [Constant.itemShadow],
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Messages.LOGO_ICON),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppTheme.blackBackColor.withOpacity(.1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(child: SizedBox(height: 1))
            ],
          ),
          Column(
            children: [
              Expanded(child: SizedBox(height: 1)),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(2.5),
                  decoration: BoxDecoration(
                    color: AppTheme.lightMainColor,
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppTheme.whiteBackColor,
                      image: DecorationImage(
                        image: AssetImage(Messages.LOGO_ICON),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: ListTile(
                    isThreeLine: true,
                    contentPadding: EdgeInsets.zero,
                    minVerticalPadding: 0,
                    title: TitleText(
                      title: "Supermarket name",
                      color: AppTheme.blackTextColor,
                    ),
                    subtitle: SubtitleText(
                      subtitle: "Store Address\n3.2 Km",
                      color: AppTheme.blackTextColor.withOpacity(.5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
