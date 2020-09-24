import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salon_mos/pages/profile_page.dart';
import 'package:salon_mos/pages/social_feed.dart';

import 'academy_page.dart';
import 'menu_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;
  int _page = 0;
  bool _isVisible = true;

  List icons = [
    FontAwesomeIcons.instagram,
    FontAwesomeIcons.home,
    FontAwesomeIcons.history,
    FontAwesomeIcons.user,
  ];

  List text = [
    'Feed',
    'Services',
    'History',
    'Me',
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  buildTabIcon(int index) {
    return Expanded(
      child: GestureDetector(
        onTap: () => _pageController.jumpToPage(index),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 5,
            ),
            Icon(
              icons[index],
              size: 21.0,
              color: _page == index
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).textTheme.caption.color,
            ),
            SizedBox(
              height: 1,
            ),
            Text(
              text[index],
              style: TextStyle(
                fontSize: 13.0,
                color: _page == index
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).textTheme.caption.color,
              ),
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: [
          SocialHome(),
          MenuPage(),
          AcademyPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: _isVisible ? 60 : 0.0,
        child: BottomAppBar(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 7),
              buildTabIcon(0),
              buildTabIcon(1),
              buildTabIcon(2),
              buildTabIcon(3),
              SizedBox(width: 7),
            ],
          ),
          color: Colors.white,
          shape: CircularNotchedRectangle(),
        ),
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }
}
