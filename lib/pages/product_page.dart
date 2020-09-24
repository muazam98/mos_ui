import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salon_mos/Theme/constants.dart';
import 'package:salon_mos/pages/cart_page.dart';
import 'package:salon_mos/pages/product_details_new.dart';
import 'package:salon_mos/utils/product.dart';
import 'package:salon_mos/widgets/icon_button.dart';
import 'package:salon_mos/widgets/rating_star.dart';
import 'package:salon_mos/widgets/strike_text.dart';

class ProductPage extends StatefulWidget {
  final String titleProduct;
  ProductPage({Key key, this.titleProduct}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    final double widthScreen = mediaQueryData.size.width;
    final double heightScreen = mediaQueryData.size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(widget.titleProduct, style: SalonTheme.title),
        actions: [
          IconButtonWidget(FontAwesomeIcons.search, () {}),
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
      backgroundColor: Colors.white,
      body: Container(
        child: GridView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: product.length,
          // controller: _scrollController,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: widthScreen / heightScreen,
          ),
          itemBuilder: (BuildContext context, int index) {
            final item = product[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ProductDetailsNew(
                        productName: item["title"],
                        desc: item["details"],
                        price: item["price"],
                        rating: item["rating"]),
                  ),
                );
              },
              child: GridTile(
                child: Container(
                  alignment: Alignment.center,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                item["img"],
                                height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              right: 10,
                              bottom: 1,
                              child: Icon(
                                Icons.favorite_border,
                                size: 30,
                                color: Colors.pink[300],
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 8, top: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      item["price"],
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                StarRating(
                                  rating: double.parse(item["rating"]),
                                  color: Colors.red,
                                  size: 18,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
