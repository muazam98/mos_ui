import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salon_mos/Theme/constants.dart';
import 'package:salon_mos/pages/cart_page.dart';
import 'package:salon_mos/widgets/icon_button.dart';
import 'package:salon_mos/widgets/rating_star.dart';

class ProductDetailsNew extends StatefulWidget {
  final String productName;
  final String desc;
  final String price;
  final String rating;

  ProductDetailsNew({this.productName, this.desc, this.price, this.rating});

  @override
  _ProductDetailsNewState createState() => _ProductDetailsNewState();
}

class _ProductDetailsNewState extends State<ProductDetailsNew> {
  int currentIndex = 0;

  List _photos = [
    'assets/images/image3.png',
    'assets/images/image1.png',
    'assets/images/image9.png'
  ];

  void _next() {
    setState(() {
      if (currentIndex < _photos.length - 1) {
        currentIndex++;
      } else {
        currentIndex = currentIndex;
      }
    });
  }

  void _preve() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
      } else {
        currentIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcf1f2),
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(widget.productName, style: SalonTheme.title),
        centerTitle: false,
        actions: [
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
      body: Stack(
        children: [
          ListView(
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: 250,
                    child: GestureDetector(
                      onHorizontalDragEnd: (DragEndDetails details) {
                        if (details.velocity.pixelsPerSecond.dx > 0) {
                          _preve();
                        } else if (details.velocity.pixelsPerSecond.dx < 0) {
                          _next();
                        }
                      },
                      child: Container(
                        width: double.infinity,
                        height: 350,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(_photos[currentIndex]),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 15,
                    bottom: 45,
                    child: Icon(
                      Icons.share,
                      size: 35,
                    ),
                  ),
                  Positioned(
                    right: 15,
                    bottom: 5,
                    child: Icon(
                      Icons.favorite_border,
                      size: 35,
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              width: 30,
                              margin: EdgeInsets.only(bottom: 60),
                              child: Row(
                                children: _buildIndicator(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              itemProductWidget(),
              Container(
                decoration: BoxDecoration(
                  boxShadow: kElevationToShadow[4],
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(top: 15),
                height: 140,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(_photos[currentIndex]),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Sallon Home",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.0,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 15,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    "Selangor",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        OutlineButton(
                          child: new Text("View Services"),
                          color: Colors.pink[300],
                          disabledBorderColor: Colors.pink[300],
                          disabledTextColor: Colors.pink[300],
                          onPressed: null,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(6.0)),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "1",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.pink[300],
                                fontSize: 20.0,
                              ),
                            ),
                            Text(
                              "Products",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                        Container(
                            height: 30,
                            child: VerticalDivider(color: Colors.grey)),
                        Column(
                          children: [
                            Text(
                              widget.rating,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.pink[300],
                                fontSize: 20.0,
                              ),
                            ),
                            Text(
                              "Rating",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              )
            ],
          ),
          Align(alignment: Alignment.bottomCenter, child: bottomWidget())
        ],
      ),
    );
  }

  Container bottomWidget() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: EdgeInsets.only(bottom: 10, left: 30, right: 30),
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[4],
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 10),
          Text(
            "1",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 8),
          Icon(FontAwesomeIcons.cartArrowDown),
          SizedBox(width: 10),
          Flexible(
            child: Container(
              color: Colors.red,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                "ADD TO BAG",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container itemProductWidget() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[4],
        color: Colors.white,
      ),
      height: 150,
      padding: EdgeInsets.only(left: 10, top: 10, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.productName.toUpperCase(),
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              StarRating(
                rating: double.parse(widget.rating),
                color: Colors.red,
                size: 18,
              )
            ],
          ),
          SizedBox(height: 8),
          Expanded(
            child: Text(
              widget.desc,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontSize: 13.0,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            widget.price,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.pink[300],
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return Expanded(
      child: Container(
        height: 5,
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: isActive ? Colors.grey[800] : Colors.white),
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < _photos.length; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}
