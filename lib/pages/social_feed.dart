import 'package:flutter/material.dart';
import 'package:salon_mos/widgets/online_person.dart';

class SocialHome extends StatefulWidget {
  SocialHome({Key key}) : super(key: key);

  @override
  _SocialHomeState createState() => _SocialHomeState();
}

class _SocialHomeState extends State<SocialHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcf1f2),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Feed',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Card(
              color: Colors.white,
              elevation: 1.0,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 10.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/avatar1.png'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          TextField(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              labelText: 'Share something',
                              labelStyle: TextStyle(fontSize: 12.0),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              InkWell(
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Icon(
                                        Icons.photo_camera,
                                        color: Color(0xFF5994FF),
                                      ),
                                    ),
                                    Text(
                                      'Photo',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Icon(
                                        Icons.people,
                                        color: Color(0xFF5994FF),
                                      ),
                                    ),
                                    Text(
                                      'Tag',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Icon(
                                        Icons.mood,
                                        color: Color(0xFF5994FF),
                                      ),
                                    ),
                                    Text(
                                      'Feel',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(0.0, 1.5),
                    blurRadius: 1.0,
                    spreadRadius: -1.0,
                  ),
                ],
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      new OnlinePersonAction(
                        personImagePath: 'assets/images/user1.jpg',
                      ),
                      new OnlinePersonAction(
                        personImagePath: 'assets/images/user4.jpg',
                      ),
                      new OnlinePersonAction(
                        personImagePath: 'assets/images/user5.jpg',
                      ),
                      new OnlinePersonAction(
                        personImagePath: 'assets/images/user6.jpg',
                      ),
                      new OnlinePersonAction(
                        personImagePath: 'assets/images/user7.jpg',
                      ),
                      new OnlinePersonAction(
                        personImagePath: 'assets/images/user3.jpg',
                      ),
                      new OnlinePersonAction(
                        personImagePath: 'assets/images/user8.jpg',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 6.0),
            child: Text(
              'Newsfeed',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Card(
              color: Colors.white,
              elevation: 1.0,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/avatar2.png'),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text(
                                  'Safa Rai',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                              Text(
                                '1 hr.',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.more_horiz,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 10.0),
                    child: Text(
                      'Watch Martin Aguinis from the Flutter team build and customize a widget for a shopping app from scratch. Flutter is Google’s mobile SDK for crafting high-quality native interfaces on iOS and Android in record time',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                  color: Color(0xFFFF627C),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50.0),
                                  ),
                                ),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.white70,
                                  size: 14.0,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '25 likes',
                                style: TextStyle(
                                  color: Color(0xFFFF627C),
                                ),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                  color: Color(0xFF5994FF),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50.0),
                                  ),
                                ),
                                child: Icon(
                                  Icons.chat,
                                  color: Colors.white70,
                                  size: 14.0,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '6 comments',
                                style: TextStyle(
                                  color: Color(0xFF5994FF),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Card(
              color: Colors.white,
              elevation: 1.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/avatar3.png'),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    'Emily Brown',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                                Text(
                                  '2 hr.',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.more_horiz,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Image.asset('assets/images/image1.png'),
                    SizedBox(height: 6.0),
                    Text(
                      'Skin Care',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFF627C),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50.0),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.favorite_border,
                                    color: Colors.white70,
                                    size: 14.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 6.0,
                                ),
                                Text(
                                  '25 likes',
                                  style: TextStyle(
                                    color: Color(0xFFFF627C),
                                  ),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF5994FF),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50.0),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.chat,
                                    color: Colors.white70,
                                    size: 14.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 6.0,
                                ),
                                Text(
                                  '6 comments',
                                  style: TextStyle(
                                    color: Color(0xFF5994FF),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Card(
              color: Colors.white,
              elevation: 1.0,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/avatar2.png'),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text(
                                  'Jane Doe',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                              Text(
                                '3 hr.',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.more_horiz,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 10.0),
                    child: Text(
                      'Flutter team build and customize a widget for a shopping app from scratch. Flutter is Google’s mobile SDK for crafting high-quality native interfaces on iOS and Android in record time',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                  color: Color(0xFFFF627C),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50.0),
                                  ),
                                ),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.white70,
                                  size: 14.0,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '17 likes',
                                style: TextStyle(
                                  color: Color(0xFFFF627C),
                                ),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                  color: Color(0xFF5994FF),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50.0),
                                  ),
                                ),
                                child: Icon(
                                  Icons.chat,
                                  color: Colors.white70,
                                  size: 14.0,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                '11 comments',
                                style: TextStyle(
                                  color: Color(0xFF5994FF),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
