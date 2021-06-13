import 'package:flutter/material.dart';
import 'package:too_good_to_go/constant/messages.dart';
import 'package:too_good_to_go/widgets/back_button.dart';
import 'package:too_good_to_go/widgets/browse_button.dart';

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
          "Orders",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  BrowseButton(
                    title: "Current",
                    state: pageIndex == 0,
                    onPressed: () {
                      setState(() {
                        pageIndex = 0;
                        pageController.jumpToPage(pageIndex);
                      });
                    },
                  ),
                  BrowseButton(
                    title: "Past",
                    state: pageIndex == 1,
                    onPressed: () {
                      setState(() {
                        pageIndex = 1;
                        pageController.jumpToPage(pageIndex);
                      });
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: pageController,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          Messages.LOGO_ICON,
                        ),
                        ListTile(
                          title: Text(
                            "No Current Orders",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        ListTile(
                          subtitle: Text(
                            "Orders that haven't been collected \n yet can be fount here",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          Messages.LOGO_ICON,
                        ),
                        ListTile(
                          title: Text(
                            "No Past Orders",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        ListTile(
                          subtitle: Text(
                            "Orders that have been collected or \n cancelled can be fount here",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
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
        ),
      ),
    );
  }
}
