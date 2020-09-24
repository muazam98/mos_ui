import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salon_mos/Theme/constants.dart';
import 'package:salon_mos/pages/booking_page.dart';
import 'package:salon_mos/pages/cart_page.dart';
import 'package:salon_mos/pages/details_services.dart';
import 'package:salon_mos/pages/product_page.dart';
import 'package:salon_mos/pages/services_page.dart';
import 'package:salon_mos/utils/academyData.dart';
import 'package:salon_mos/utils/product.dart';
import 'package:salon_mos/widgets/icon_button.dart';
import 'package:salon_mos/widgets/rating_star.dart';

import 'courses_page.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<PagesListData> pageListData = PagesListData.tabIconsList;
  List<ServicesListData> servicesListData = ServicesListData.tabIconsList;
  void goTo(int index) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcf1f2),
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Make Over Station", style: SalonTheme.title),
        actions: [
          IconButtonWidget(FontAwesomeIcons.search, () {}),
          IconButtonWidget(FontAwesomeIcons.qrcode, () {}),
          IconButtonWidget(FontAwesomeIcons.shoppingBag, () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => CartPage(),
              ),
            );
          }),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          imageCarousel(),
          SizedBox(height: 3),
          menuType(),
          SizedBox(height: 10),
          bestCourses(),
          SizedBox(height: 10),
          bestProduct(),
          SizedBox(height: 10),
          servicesType(),
        ],
      ),
    );
  }

  Container bestCourses() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[4],
        color: Colors.white,
      ),
      padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
      height: 300,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "BEST COURSES",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontFamily: 'Karla',
              fontWeight: FontWeight.bold,
              letterSpacing: 0.59,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: academyData.length,
              itemBuilder: (context, index) {
                final item = academyData[index];
                return Container(
                  padding: EdgeInsets.only(right: 20),
                  width: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 130,
                        child: Image.asset(
                          item["img"],
                          height: double.infinity,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        item["title"].toUpperCase(),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Text(
                        item["desc"],
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 13.0,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        item["student"],
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Container bestProduct() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[4],
        color: Colors.white,
      ),
      padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
      height: 300,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "BEST PRODUCT",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontFamily: 'Karla',
              fontWeight: FontWeight.bold,
              letterSpacing: 0.59,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: product.length - 12,
              itemBuilder: (context, index) {
                final item = product[index];
                return Container(
                  padding: EdgeInsets.only(right: 20),
                  width: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 130,
                        child: Image.asset(
                          item["img"],
                          height: double.infinity,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        item["title"].toUpperCase(),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Text(
                        item["details"],
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 13.0,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      Text(
                        item["price"],
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      StarRating(
                        rating: double.parse(item["rating"]),
                        color: Colors.red,
                        size: 18,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Container servicesType() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[4],
        color: Colors.white,
      ),
      padding: EdgeInsets.only(left: 10, top: 10),
      width: double.infinity,
      height: 550,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "BEST SERVICES",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontFamily: 'Karla',
              fontWeight: FontWeight.bold,
              letterSpacing: 0.59,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: servicesListData.length,
                itemBuilder: (context, index) {
                  final item = servicesListData[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => DetailsServices(
                            itemImg: item.img,
                            title: item.title,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Stack(
                        children: [
                          Container(
                            height: double.infinity,
                            width: 260,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Image.network(
                                    item.img,
                                    height: 300,
                                    width: 260,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Flexible(
                                  fit: FlexFit.loose,
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
                                SizedBox(
                                  height: 8,
                                ),
                                Flexible(
                                  fit: FlexFit.loose,
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
                                Flexible(
                                  fit: FlexFit.loose,
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
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 55,
                                  color: Colors.pink[100],
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 8, bottom: 8),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.pink[300],
                                          borderRadius:
                                              BorderRadius.circular(8.0),
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
                          Positioned(
                            top: 5,
                            right: 5,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        BookingPage(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 40,
                                width: 69,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.pink[300],
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Text(
                                  'ADD +',
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
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Container menuType() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[4],
        color: Colors.white,
      ),
      width: double.infinity,
      height: 140,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: pageListData.length,
        // controller: _scrollController,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (BuildContext context, int index) {
          final item = pageListData[index];
          return GestureDetector(
            onTap: () {
              switch (item.title) {
                case "Product":
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ProductPage(
                        titleProduct: item.title,
                      ),
                    ),
                  );
                  break;
                case "Courses":
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => CoursesPage(),
                    ),
                  );
                  break;
                case "Services":
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ServicesPage(),
                    ),
                  );
                  break;
                default:
              }
            },
            child: GridTile(
              child: new Container(
                alignment: Alignment.center,
                decoration: new BoxDecoration(
                    border: Border.all(
                        width: 0.1, color: Colors.black.withOpacity(0.7))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        item.img,
                        height: 80,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      item.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontFamily: 'Karla',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.59,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Container imageCarousel() {
    final double height = MediaQuery.of(context).size.height;
    return Container(
      height: 200.0,
      width: double.infinity,
      child: CarouselSlider(
        items: [
          'http://mycherry2.msonlinegroup.com/DynamicImage/6cfae1d2-e802-400c-8736-6d885246d8ee.jpg',
          'http://mycherry2.msonlinegroup.com/DynamicImage/002c286a-448b-49df-bdbc-d07959f7866a.jpg',
          'http://mycherry2.msonlinegroup.com/DynamicImage/530a05cf-952c-4f46-9020-85b4465f0383.jpg',
          'http://mycherry2.msonlinegroup.com/DynamicImage/92114416-2df7-4677-8c61-811473aef300.jpg'
        ].map((i) {
          return Builder(builder: (BuildContext context) {
            return Container(
              alignment: Alignment.center,
              height: double.infinity,
              width: double.infinity,
              child: Image.network(
                i,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            );
          });
        }).toList(),
        options: CarouselOptions(
          height: height,
          viewportFraction: 1.0,
          enlargeCenterPage: false,
          autoPlay: true,
        ),
      ),
    );
  }
}

class PagesListData {
  PagesListData({
    this.img,
    this.title,
  });

  String img;
  String title;

  static List<PagesListData> tabIconsList = <PagesListData>[
    PagesListData(
      img:
          'https://pinkoctopus.my/wp-content/uploads/2016/05/Pink-Octopus-our-services-2.png',
      title: 'Services',
    ),
    PagesListData(
      img:
          'https://static.toiimg.com/thumb/msid-75485662,width-1070,height-580,overlay-toi_sw,pt-32,y_pad-40,resizemode-75,imgsize-92650/75485662.jpg',
      title: 'Courses',
    ),
    PagesListData(
      img: 'https://www.ilc-cosmetic.com/wp-content/uploads/2017/02/mask-1.jpg',
      title: 'Product',
    ),
  ];
}

class ServicesListData {
  ServicesListData({
    this.img,
    this.title,
    this.subtitle,
    this.progress,
    this.price,
  });

  String img;
  String title;
  String subtitle;
  String progress;
  String price;

  static List<ServicesListData> tabIconsList = <ServicesListData>[
    ServicesListData(
        img:
            'http://mycherry2.msonlinegroup.com/DynamicImage/230adcad-d15e-4b19-9576-b89c4f5e9710.jpg',
        title: 'Aesthetics',
        progress: '60',
        price: 'RM 50.00'),
    ServicesListData(
        img:
            'http://mycherry2.msonlinegroup.com/DynamicImage/b6279472-43c3-4434-824d-c8c01364c82e.jpg',
        title: 'Hairdressing',
        progress: '80',
        price: 'RM 50.00'),
    ServicesListData(
        img:
            'http://mycherry2.msonlinegroup.com/DynamicImage/cd55b299-4a95-4d4d-b208-1a2f336384dd.jpeg',
        title: 'Nails',
        progress: '70',
        price: 'RM 50.00'),
    ServicesListData(
        img:
            'http://mycherry2.msonlinegroup.com/DynamicImage/3a2b5b24-3b01-4cb8-be35-2aa0e652f736.jpg',
        title: 'Slimming',
        progress: '120',
        price: 'RM 50.00'),
    ServicesListData(
        img:
            'http://mycherry2.msonlinegroup.com/DynamicImage/69a3a99d-8e40-4580-8ad2-9a6d33484868.jpg',
        title: 'Spa',
        progress: '50',
        price: 'RM 50.00'),
    ServicesListData(
        img:
            'http://mycherry2.msonlinegroup.com/DynamicImage/e77eec62-5a24-4388-885e-0e1c0690854b.jpg',
        title: 'Waxing',
        progress: '30',
        price: 'RM 50.00'),
  ];
}
