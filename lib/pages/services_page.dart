import 'package:flutter/material.dart';
import 'package:salon_mos/Theme/constants.dart';
import 'package:salon_mos/pages/details_services.dart';
import 'package:salon_mos/pages/menu_page.dart';

class ServicesPage extends StatefulWidget {
  ServicesPage({Key key}) : super(key: key);

  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  List<ServicesListData> servicesListData = ServicesListData.tabIconsList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcf1f2),
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Courses", style: SalonTheme.title),
        centerTitle: false,
      ),
      body: Container(
        width: double.infinity,
        child: ListView.builder(
          itemCount: servicesListData.length,
          itemBuilder: (context, index) {
            final item = servicesListData[index];
            return Container(
              color: Colors.white,
              margin: EdgeInsets.only(right: 20, left: 20, top: 20),
              child: Stack(
                children: [
                  Container(
                    height: 500,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Image.network(
                            item.img,
                            height: 300,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Flexible(
                          fit: FlexFit.loose,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              item.title,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontFamily: 'Karla',
                                fontWeight: FontWeight.bold,
                                // letterSpacing: 0.59,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Flexible(
                          fit: FlexFit.loose,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              '√ Chocolate Waxing - Full Arms, Full\nLegs & Underarams',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 13.0,
                                fontFamily: 'Karla',
                                // letterSpacing: 0.59,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.loose,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              '√ Threading - Eyebrows & Upperlips',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 13.0,
                                fontFamily: 'Karla',
                                // letterSpacing: 0.59,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 55,
                          color: Colors.pink[100],
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 8, bottom: 8),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.pink[300],
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                width: 100,
                                child: Text(
                                  item.price,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontFamily: 'Karla',
                                      fontWeight: FontWeight.bold
                                      // letterSpacing: 0.59,
                                      ),
                                ),
                              ),
                              Text(
                                "(" + item.progress + " Min)",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontFamily: 'Karla',
                                    fontWeight: FontWeight.bold
                                    // letterSpacing: 0.59,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
