import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salon_mos/pages/academyDetails_page.dart';

class AcademyPage extends StatefulWidget {
  AcademyPage({Key key}) : super(key: key);

  @override
  _AcademyPageState createState() => _AcademyPageState();
}

class _AcademyPageState extends State<AcademyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcf1f2),
      body: ListView(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
            ),
            margin: EdgeInsets.only(left: 10, right: 10, top: 30),
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Courses",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          buildContainerAcademy('assets/images/academy1.jpg', "Class Skin Care",
              "574,221 Graduates"),
          buildContainerAcademy(
              'assets/images/academy2.jpg', "Class Hair", "574,221 Graduates"),
          buildContainerAcademy('assets/images/academy3.jpg', "Class Skin Care",
              "574,221 Graduates"),
        ],
      ),
    );
  }

  GestureDetector buildContainerAcademy(asset, title, graduates) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => AcademyDetailsPage(
              image: asset,
            ),
          ),
        );
      },
      child: Container(
        height: 110,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        margin: EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Padding(
          padding: const EdgeInsets.only(left: 0, right: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                width: 90.0,
                height: 90.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(asset)),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      graduates,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "4.6",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 15,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
