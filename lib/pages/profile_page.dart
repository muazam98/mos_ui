import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salon_mos/pages/calendar_page.dart';
import 'package:salon_mos/pages/login_page.dart';
import 'package:salon_mos/pages/profile_details.dart';
import 'package:salon_mos/pages/referal_page.dart';
import 'package:salon_mos/pages/wallet_page.dart';

Color mainColor = Color(0xff774a63);
Color secondColor = Color(0xffd6a5c0);
Color backgroundColor = Color(0xfffcf1f2);

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: <Widget>[
          HeaderTabBar()
          // CustomSocialHeader(),
          // SocialInfo(),
          // SocialFeed(),
        ],
      ),
    );
  }
}

class HeaderTabBar extends StatefulWidget {
  HeaderTabBar({Key key}) : super(key: key);

  @override
  _HeaderTabBarState createState() => _HeaderTabBarState();
}

class _HeaderTabBarState extends State<HeaderTabBar>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfffcf1f2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 25, top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Icon(Icons.settings, color: mainColor),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, bottom: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/avatar1.png'),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: secondColor,
                        blurRadius: 40,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Anastasia Mari',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: mainColor),
                    ),
                    Text(
                      'Follower 1 | Following 1',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: secondColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: TabBar(
              labelColor: Colors.white,
              controller: _controller,
              tabs: [
                Tab(
                  text: 'Buying',
                ),
                Tab(
                  text: 'Posts',
                ),
              ],
            ),
          ),
          Container(
            height: 400.0,
            margin: EdgeInsets.only(top: 10),
            child: new TabBarView(
              controller: _controller,
              children: <Widget>[
                TabBar1(),
                TabBar2(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabBar2 extends StatelessWidget {
  const TabBar2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 300,
          color: Colors.white,
          alignment: Alignment.center,
          child: Text("No post yet"),
        ),
      ],
    );
  }
}

class TabBar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 350,
          color: Colors.white,
          child: Column(
            children: [
              buildListTile("Wallet", FontAwesomeIcons.wallet, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => WalletPage(),
                  ),
                );
              }),
              buildListTile("Refer a Friend", FontAwesomeIcons.userFriends, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ReferralPage(),
                  ),
                );
              }),
              buildListTile("My Profile", FontAwesomeIcons.userCircle, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ProfileDetails(),
                  ),
                );
              }),
              buildListTile("My Calendar", FontAwesomeIcons.calendar, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => CalendarPage(),
                  ),
                );
              }),
              buildListTile("Sign In/ Register", FontAwesomeIcons.calendar, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => LoginPage(),
                  ),
                );
              }),
            ],
          ),
        ),
      ],
    );
  }

  ListTile buildListTile(
    String title,
    IconData icon,
    Function onTap,
  ) {
    if (title == "Wallet") {
      return ListTile(
        onTap: onTap,
        leading: Icon(
          icon,
          size: 22,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            Text('RM 84.60'),
          ],
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 18,
        ),
      );
    } else {
      return ListTile(
        onTap: onTap,
        leading: Icon(icon, size: 22),
        title: Text(title),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 18,
        ),
      );
    }
  }
}
