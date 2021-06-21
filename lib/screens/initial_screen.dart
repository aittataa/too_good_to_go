import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:too_good_to_go/pages/browse_page.dart';
import 'package:too_good_to_go/pages/discover_page.dart';
import 'package:too_good_to_go/pages/favorites_page.dart';
import 'package:too_good_to_go/pages/more_page.dart';
import 'package:too_good_to_go/widgets/navigation_bar.dart';

class InitialScreen extends StatefulWidget {
  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  int myIndex;
  PageController controller;
  @override
  void initState() {
    super.initState();
    myIndex = 0;
    controller = PageController(initialPage: myIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      //extendBodyBehindAppBar: myIndex == 1,
      /*
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: PageTitle(
          title: Constant.titlesList[myIndex],
        ),
      ),
      */
      body: PageView(
        controller: controller,
        physics: NeverScrollableScrollPhysics(),
        children: [
          DiscoverPage(),
          BrowsePage(),
          FavoritesPage(),
          MorePage(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        currentIndex: myIndex,
        onTap: (index) {
          setState(() {
            myIndex = index;
            controller.jumpToPage(myIndex);
          });
        },
      ),
    );
  }
}
