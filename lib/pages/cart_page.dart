import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salon_mos/Theme/constants.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  String image1 = 'assets/images/image3.png';
  String image2 = 'assets/images/image9.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcf1f2),
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Shopping Bag", style: SalonTheme.title),
        centerTitle: false,
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: kElevationToShadow[2],
                  color: Colors.white,
                ),
                width: double.infinity,
                height: 360,
                child: Column(
                  children: [
                    buildContainerProduct(
                        image1,
                        'ARGAN OIL',
                        'Herbal Essences Argan Oil of Morocco 400ml Shampoo',
                        'RM 20.00'),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                    ),
                    buildContainerProduct(
                        image1,
                        'ARGAN OIL',
                        'Herbal Essences Argan Oil of Morocco 400ml Shampoo',
                        'RM 20.00'),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: kElevationToShadow[4],
                  color: Colors.white,
                ),
                margin:
                    EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
                height: 50,
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20),
                    Icon(FontAwesomeIcons.gift, color: Colors.red),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Redeem Your Rewards: 0",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontFamily: 'Karla',
                          fontWeight: FontWeight.bold,
                          // letterSpacing: 0.59,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 16),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: kElevationToShadow[4],
                  color: Colors.white,
                ),
                height: 150,
                width: double.infinity,
                padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    rowInfo("Merchandise", "RM 122.00"),
                    SizedBox(height: 8),
                    rowInfo("GST 7% (Included)", "RM 6.78"),
                    SizedBox(height: 8),
                    Text(
                      'Shipping will be calculated at checkout',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        fontFamily: 'Karla',
                        // letterSpacing: 0.59,
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontFamily: 'Karla',
                              fontWeight: FontWeight.bold
                              // letterSpacing: 0.59,
                              ),
                        ),
                        Text(
                          'RM 103.70',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontFamily: 'Karla',
                              fontWeight: FontWeight.bold
                              // letterSpacing: 0.59,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
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
      height: 45,
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[4],
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2 items",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "RM 103.79",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(width: 50),
          Flexible(
            child: Container(
              color: Colors.red,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                "SECURE CHECKOUT",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Row rowInfo(title1, title2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title1,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 15.0,
            fontFamily: 'Karla',
            // letterSpacing: 0.59,
          ),
        ),
        Text(
          title2,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 15.0,
            fontFamily: 'Karla',
            // letterSpacing: 0.59,
          ),
        ),
      ],
    );
  }

  Container buildContainerProduct(
      image, nameProduct, descProduct, priceProduct) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      height: 150,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
            width: 140,
            height: double.infinity,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            ),
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.only(right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        nameProduct,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontFamily: 'Karla',
                          fontWeight: FontWeight.bold,
                          // letterSpacing: 0.59,
                        ),
                      ),
                      ClipOval(
                        child: Material(
                          color: Colors.grey, // button color
                          child: InkWell(
                            splashColor: Colors.red, // inkwell color
                            child: SizedBox(
                                width: 22,
                                height: 22,
                                child: Icon(
                                  Icons.close,
                                  color: Colors.white,
                                  size: 23,
                                )),
                            onTap: () {},
                          ),
                        ),
                      )
                    ],
                  ),
                  Text(
                    descProduct,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontFamily: 'Karla',
                      // letterSpacing: 0.59,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      priceProduct,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontFamily: 'Karla',
                        // letterSpacing: 0.59,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Qty: ',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16.0,
                          fontFamily: 'Karla',
                          // letterSpacing: 0.59,
                        ),
                      ),
                      SizedBox(width: 18),
                      Text(
                        '1',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18.0,
                          fontFamily: 'Karla',
                          // letterSpacing: 0.59,
                        ),
                      ),
                      SizedBox(width: 3),
                      Icon(FontAwesomeIcons.cartArrowDown)
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
