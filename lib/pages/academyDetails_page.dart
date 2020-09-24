import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salon_mos/Theme/constants.dart';

class AcademyDetailsPage extends StatefulWidget {
  final String image;
  AcademyDetailsPage({this.image});

  @override
  _AcademyDetailsPageState createState() => _AcademyDetailsPageState();
}

class _AcademyDetailsPageState extends State<AcademyDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Academy", style: SalonTheme.title),
        centerTitle: false,
      ),
      backgroundColor: Color(0xfffcf1f2),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 0),
            child: ListView(
              children: [
                Container(
                  width: 80.0,
                  height: 210.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(widget.image)),
                    borderRadius: BorderRadius.all(Radius.circular(0.0)),
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "Learn the basic of",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "SALON PROFESSIONAL",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Learn how to use Salon Professional with the Salon Academy course. Enroll free today!",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Open Day",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 3),
                          Icon(Icons.calendar_today)
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            openDay("Monday"),
                            SizedBox(width: 8),
                            openDay("Tuesday"),
                            SizedBox(width: 8),
                            openDay("Wednesday"),
                            SizedBox(width: 8),
                            openDay("Friday"),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Operation Hours",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 3),
                          Icon(Icons.watch)
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            openDay("10:00 AM"),
                            SizedBox(width: 8),
                            openDay(" - "),
                            SizedBox(width: 8),
                            openDay("10:00 PM"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(alignment: Alignment.bottomCenter, child: bottomWidget())
        ],
      ),
    );
  }

  Container openDay(openDay) {
    return Container(
      child: new Text(
        "$openDay",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      decoration: new BoxDecoration(
          borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
          color: Colors.pink[300]),
      padding: new EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
    );
  }

  ButtonTheme bottomWidget() {
    return ButtonTheme(
      minWidth: 200.0,
      height: 60.0,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(0.0)),
        onPressed: () {},
        color: Colors.redAccent[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Contact Now',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
