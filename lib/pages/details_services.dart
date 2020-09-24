import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:salon_mos/Theme/constants.dart';
import 'package:salon_mos/utils/dateTime.dart';

class DetailsServices extends StatefulWidget {
  final String itemImg;
  final String title;

  DetailsServices({this.itemImg, this.title});

  @override
  _DetailsServicesState createState() => _DetailsServicesState();
}

class _DetailsServicesState extends State<DetailsServices> {
  int tapColor = 0;
  int onPress = 0;
  int onPressSlots = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcf1f2),
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Details Services", style: SalonTheme.title),
        centerTitle: false,
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              topContainer(),
              SizedBox(height: 8),
              titleBuild("Time"),
              SizedBox(height: 8),
              widgetHours(),
              buildContainerDate(),
            ],
          ),
          Align(alignment: Alignment.bottomCenter, child: bottomWidget())
        ],
      ),
    );
  }

  Container buildContainerDate() {
    return Container(
      height: 550,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 8,
          ),
          titleBuild("Schedule Date"),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.only(left: 5),
            width: double.infinity,
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dateTime.length,
              itemBuilder: (context, index) {
                final item = dateTime[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      onPress = item["onTap"];
                    });
                  },
                  child: Container(
                    width: 96,
                    height: double.infinity,
                    padding: EdgeInsets.only(top: 8),
                    decoration: new BoxDecoration(
                        color: onPress == item["onTap"]
                            ? Colors.pink[300]
                            : Colors.white,
                        border: Border.all(
                            width: 0.1, color: Colors.black.withOpacity(0.7))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          item["day"],
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: onPress == item["onTap"]
                                ? Colors.white
                                : Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          item["date"],
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: onPress == item["onTap"]
                                ? Colors.white
                                : Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          item["month"],
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: onPress == item["onTap"]
                                ? Colors.white
                                : Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 8,
          ),
          titleBuild("Normal Slots"),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              height: 300,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 4,
                      ),
                      buildNormalSlots('10:00 AM - 10:30 AM', 1),
                      SizedBox(
                        width: 3,
                      ),
                      buildNormalSlots('11:00 AM - 11:30 AM', 2),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 4,
                      ),
                      buildNormalSlots('01:00 PM - 01:30 PM', 3),
                      SizedBox(
                        width: 3,
                      ),
                      buildNormalSlots('02:00 AM - 02:30 PM', 4),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 4,
                      ),
                      buildNormalSlots('03:00 PM - 03:30 PM', 5),
                      SizedBox(
                        width: 3,
                      ),
                      buildNormalSlots('04:00 AM - 04:30 PM', 6),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 4,
                      ),
                      buildNormalSlots('05:00 PM - 05:30 PM', 7),
                      SizedBox(
                        width: 3,
                      ),
                      buildNormalSlots('06:00 AM - 06:30 PM', 8),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container bottomWidget() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(width: 4.0, color: Colors.grey[300]),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontFamily: 'Karla',
                    fontWeight: FontWeight.bold,
                    // letterSpacing: 0.59,
                  ),
                ),
                Text(
                  'RM 200.00',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontFamily: 'Karla',
                    fontWeight: FontWeight.bold,
                    // letterSpacing: 0.59,
                  ),
                ),
              ],
            ),
          ),
          FloatingActionButton.extended(
            onPressed: () {},
            isExtended: true,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            icon: Icon(Icons.supervised_user_circle),
            label: Text('Book Now'),
          ),
        ],
      ),
    );
  }

  GestureDetector buildNormalSlots(String title, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          onPressSlots = index;
        });
      },
      child: Container(
        decoration: new BoxDecoration(
            color: onPressSlots == index ? Colors.pink[300] : Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(width: 0.2, color: Colors.grey)),
        width: 200,
        height: 50,
        alignment: Alignment.center,
        child: Text(
          title,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: onPressSlots == index ? Colors.white : Colors.black,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Container widgetHours() {
    return Container(
      height: 150,
      width: double.infinity,
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          listHorizontalHours("1", "30", "100", 1),
          listHorizontalHours("2", "30", "150", 2),
          listHorizontalHours("3", "30", "200", 3),
        ],
      ),
    );
  }

  GestureDetector listHorizontalHours(hours, minutes, price, onTapColor) {
    return GestureDetector(
      onTap: () {
        setState(() {
          tapColor = onTapColor;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
                width: 2.0,
                color:
                    tapColor == onTapColor ? Colors.pink[300] : Colors.white)),
        width: 200,
        height: double.infinity,
        margin: EdgeInsets.all(15),
        child: Card(
          elevation: 3,
          shadowColor: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        '$hours',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontFamily: 'Karla',
                          fontWeight: FontWeight.bold,
                          // letterSpacing: 0.59,
                        ),
                      ),
                      Text(
                        'Hours',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14.0,
                          fontFamily: 'Karla',
                          fontWeight: FontWeight.bold,
                          // letterSpacing: 0.59,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Text(
                        '$minutes',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontFamily: 'Karla',
                          fontWeight: FontWeight.bold,
                          // letterSpacing: 0.59,
                        ),
                      ),
                      Text(
                        'Minutes',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14.0,
                          fontFamily: 'Karla',
                          fontWeight: FontWeight.bold,
                          // letterSpacing: 0.59,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              Text(
                'Price RM $price',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.pink[300],
                  fontSize: 18.0,
                  fontFamily: 'Karla',
                  fontWeight: FontWeight.bold,
                  // letterSpacing: 0.59,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding titleBuild(title) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Text(
        title,
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
          fontFamily: 'Karla',
          fontWeight: FontWeight.bold,
          letterSpacing: 0.59,
        ),
      ),
    );
  }

  Container topContainer() {
    return Container(
      width: double.infinity,
      height: 150,
      margin: EdgeInsets.only(top: 8),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, top: 5, bottom: 5),
            child: Image.network(
              widget.itemImg,
              height: 200,
              width: 140,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontFamily: 'Karla',
                      fontWeight: FontWeight.bold,
                      // letterSpacing: 0.59,
                    ),
                  ),
                  Text(
                    "√ Chocolate Waxing - Full Arms, Full\nLegs & Underarams" +
                        "√ Threading - Eyebrows & Upperlips",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontFamily: 'Karla',
                      fontWeight: FontWeight.bold,
                      // letterSpacing: 0.59,
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
