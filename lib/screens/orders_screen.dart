import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/constant.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/back_icon.dart';
import 'package:too_good_to_go/widgets/browse_button.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class OrdersScreen extends StatefulWidget {
  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  int pageIndex = 0;
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
        title: Text(
          Messages.MORE_ORDERS_TITLE,
          style: Constant.appBarStyle,
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppTheme.blackBackColor.withOpacity(.15),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Expanded(
                  child: BrowseButton(
                    title: Messages.MORE_ORDERS_CURRENT_BUTTON,
                    state: pageIndex == 0,
                    onPressed: () {
                      setState(() {
                        pageIndex = 0;
                        pageController.jumpToPage(pageIndex);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: BrowseButton(
                    title: Messages.MORE_ORDERS_PAST_BUTTON,
                    state: pageIndex == 1,
                    onPressed: () {
                      setState(() {
                        pageIndex = 1;
                        pageController.jumpToPage(pageIndex);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: pageController,
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      ExpandedLogo(flex: 2),
                      Expanded(
                        child: Column(
                          children: [
                            ListTile(
                              title: TitleText(
                                title: Messages.MORE_ORDERS_CURRENT_TITLE,
                              ),
                            ),
                            ListTile(
                              subtitle: SubtitleText(
                                subtitle: Messages.MORE_ORDERS_CURRENT_SUBTITLE,
                                color: AppTheme.blackTextColor.withOpacity(.75),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Column(
                    children: [
                      ExpandedLogo(flex: 2),
                      Expanded(
                        child: Column(
                          children: [
                            ListTile(
                              title: TitleText(
                                title: Messages.MORE_ORDERS_PAST_TITLE,
                              ),
                            ),
                            ListTile(
                              subtitle: SubtitleText(
                                subtitle: Messages.MORE_ORDERS_PAST_SUBTITLE,
                                color: AppTheme.blackTextColor.withOpacity(.75),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
