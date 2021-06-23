import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/profile_title.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';

class CitiesItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          ProfileTitle(label: Messages.PROFILE_ACCOUNT_CITY),
          Expanded(
            child: Container(
              color: AppTheme.whiteBackColor,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: Constant.cities.length,
                itemBuilder: (BuildContext context, int index) {
                  String value = Constant.cities[index];
                  return ListTile(
                    dense: true,
                    title: SubtitleText(
                      subtitle: "$value",
                      color: AppTheme.blackTextColor.withOpacity(0.75),
                      textAlign: TextAlign.start,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
