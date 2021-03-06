import 'package:flutter/material.dart';
import 'package:salon_mos/Theme/constants.dart';
import 'package:salon_mos/pages/change_password.dart';
import 'package:salon_mos/pages/edit_profile.dart';

class ProfileDetails extends StatefulWidget {
  ProfileDetails({Key key}) : super(key: key);

  @override
  _ProfileDetailsState createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcf1f2),
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Profile', style: SalonTheme.title),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: kElevationToShadow[4],
              color: Colors.white,
            ),
            padding: EdgeInsets.only(left: 10, right: 10),
            width: double.infinity,
            height: 340,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  "Personal Info",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 15.0,
                    fontFamily: 'Karla',
                  ),
                ),
                SizedBox(height: 10),
                Divider(
                  color: Colors.grey,
                  thickness: 0,
                ),
                SizedBox(height: 10),
                Row(
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
                            color: Color(0xffd6a5c0),
                            blurRadius: 40,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "First Name",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.0,
                                      fontFamily: 'Karla',
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Last Name",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.0,
                                      fontFamily: 'Karla',
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Gender",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.0,
                                      fontFamily: 'Karla',
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Language",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.0,
                                      fontFamily: 'Karla',
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Anastasia",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 15.0,
                                    fontFamily: 'Karla',
                                  ),
                                ),
                                Text(
                                  "Mari",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 15.0,
                                    fontFamily: 'Karla',
                                  ),
                                ),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 15.0,
                                    fontFamily: 'Karla',
                                  ),
                                ),
                                Text(
                                  "English",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 15.0,
                                    fontFamily: 'Karla',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    "Address",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontFamily: 'Karla',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10, top: 5),
                    width: 300,
                    child: Text(
                        "No 6, Jalan 16/2B Taman Seri Kembangan, Balakong , 43200 Selangor"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonTheme(
                      minWidth: 150.0,
                      height: 50.0,
                      child: OutlineButton(
                        child: Text('CHANGE PASSWORD',
                            style: TextStyle(color: Colors.pink)),
                        borderSide: BorderSide(
                          color: Colors.black54,
                          width: 1.8,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ChangePassword(),
                            ),
                          );
                        },
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 150.0,
                      height: 50.0,
                      child: OutlineButton(
                        child: Text('EDIT PROFILE ',
                            style: TextStyle(color: Colors.pink)),
                        borderSide: BorderSide(
                          color: Colors.black54,
                          width: 1.8,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => EditProfile(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: kElevationToShadow[4],
              color: Colors.white,
            ),
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(top: 13),
            height: 100,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Saved Credit/Debit Card",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontFamily: 'Karla',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 5),
                Divider(),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "You have no saved cards.",
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 15.0,
                      fontFamily: 'Karla',
                    ),
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
