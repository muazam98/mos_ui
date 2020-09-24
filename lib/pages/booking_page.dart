import 'package:flutter/material.dart';
import 'package:salon_mos/Theme/constants.dart';
import 'package:salon_mos/utils/dateTime.dart';

class BookingPage extends StatefulWidget {
  BookingPage({Key key}) : super(key: key);

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  int onPress = 0;
  int onPressSlots = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F3F8),
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Booking", style: SalonTheme.title),
        centerTitle: false,
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Schedule Date",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 15,
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
                              width: 0.1,
                              color: Colors.black.withOpacity(0.7))),
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
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Normal Slots",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 15,
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
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              child: FlatButton(
                color: Colors.pink[300],
                onPressed: () {},
                child: Text("Proceed"),
              ),
            )
          ],
        ),
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
}
