import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/app_theme.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/browse_button.dart';
import 'package:too_good_to_go/widgets/expanded_logo.dart';
import 'package:too_good_to_go/widgets/subtitle_text.dart';
import 'package:too_good_to_go/widgets/title_text.dart';

class OrdersDetails extends StatefulWidget {
  @override
  _OrdersDetailsState createState() => _OrdersDetailsState();
}

class _OrdersDetailsState extends State<OrdersDetails> {
  int pageIndex;
  PageController pageController = PageController();
  @override
  void initState() {
    super.initState();
    pageIndex = 0;
    pageController = PageController(initialPage: pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
              /// TODO : Current Page Orders
              SizedBox(
                child: Column(
                  children: [
                    ExpandedLogo(flex: 2),
                    Expanded(
                      child: Center(
                        child: ListTile(
                          title: TitleText(
                            title: Messages.MORE_ORDERS_CURRENT_TITLE,
                          ),
                          subtitle: SubtitleText(
                            subtitle: Messages.MORE_ORDERS_CURRENT_SUBTITLE,
                            color: AppTheme.blackTextColor.withOpacity(.75),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// TODO : Past Page Orders
              SizedBox(
                child: Column(
                  children: [
                    ExpandedLogo(flex: 2),
                    Expanded(
                      child: Center(
                        child: ListTile(
                          title: TitleText(
                            title: Messages.MORE_ORDERS_PAST_TITLE,
                          ),
                          subtitle: SubtitleText(
                            subtitle: Messages.MORE_ORDERS_PAST_SUBTITLE,
                            color: AppTheme.blackTextColor.withOpacity(.75),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
