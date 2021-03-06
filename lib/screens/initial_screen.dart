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
  int pageIndex;
  PageController pageController;
  @override
  void initState() {
    super.initState();
    pageIndex = 0;
    pageController = PageController(initialPage: pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          DiscoverPage(),
          BrowsePage(),
          FavoritesPage(),
          MorePage(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        currentIndex: pageIndex,
        onTap: (index) {
          setState(() {
            pageIndex = index;
            pageController.jumpToPage(pageIndex);
          });
        },
      ),
    );
  }
}
