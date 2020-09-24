import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salon_mos/models/responsive.dart';
import 'package:salon_mos/widgets/circle.dart';

class WalletPage extends StatefulWidget {
  WalletPage({Key key}) : super(key: key);

  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    final double yellowSize = responsive.wp(50);
    final double orangeSize = responsive.wp(50);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                _buildGradientBalanceCard(),
                Divider(
                  height: 0,
                  thickness: 1,
                ),
                _buildIconButton(),
                Divider(
                  height: 0,
                  thickness: 8,
                ),
                Expanded(child: _buildWalletTransaction())
              ],
            ),
            Positioned(
              top: -yellowSize * 0.4,
              right: -yellowSize * 0.2,
              child: Circle(
                size: yellowSize,
                colors: [
                  Colors.pink[300],
                  Color(0xfffcf1f2),
                ],
              ),
            ),
            // Positioned(
            //   left: 15,
            //   top: 15,
            //   child: Row(
            //     children: [
            //       // BackButton(color: Colors.black.withOpacity(0.7)),
            //       Text(
            //         "My Points",
            //         style: TextStyle(
            //             color: Colors.black,
            //             fontWeight: FontWeight.w500,
            //             fontSize: 20),
            //       ),
            //     ],
            //   ),
            // ),
            Positioned(
              top: -yellowSize * 0.1,
              right: -yellowSize * 0.5,
              child: Circle(
                size: orangeSize,
                colors: [
                  Colors.pink[300],
                  Color(0xfffcf1f2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildGradientBalanceCard() {
    return Container(
      height: 180,
      width: double.infinity,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(5),
      //   gradient: LinearGradient(
      //     begin: Alignment.topLeft,
      //     end: Alignment.bottomRight,
      //     colors: [
      //       Colors.yellow[100].withOpacity(0.9),
      //       Colors.yellow,
      //     ],
      //   ),
      // ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            // Text(
            //   "Total Points",
            //   style: TextStyle(
            //     color: Colors.black26.withOpacity(0.5),
            //     fontSize: 18,
            //   ),
            // ),
            Row(
              children: [
                Text(
                  "RM",
                  style: TextStyle(
                    color: Colors.black38.withOpacity(0.5),
                    fontSize: 18,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 2),
                  child: Text(
                    "84.60",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.9),
                      fontWeight: FontWeight.w500,
                      fontSize: 28,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 4),
          ],
        ),
      ),
    );
  }

  Container _buildIconButton() {
    return Container(
      width: double.infinity,
      height: 140,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {},
                color: Colors.pink[100],
                textColor: Colors.white,
                child: Image(
                  width: 38,
                  image: AssetImage(
                    "assets/images/coupon.png",
                  ),
                ),
                padding: EdgeInsets.all(11),
                shape: CircleBorder(),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Voucher",
                style: TextStyle(
                  color: Colors.black38.withOpacity(0.5),
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {},
                color: Colors.pink[100],
                textColor: Colors.white,
                child: Image(
                  width: 38,
                  image: AssetImage(
                    "assets/images/topup.png",
                  ),
                ),
                padding: EdgeInsets.all(11),
                shape: CircleBorder(),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Topup",
                style: TextStyle(
                  color: Colors.black38.withOpacity(0.5),
                  fontSize: 16,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container _buildWalletTransaction() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 10, top: 15, right: 10),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Wallet Transaction",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.9),
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                FlatButton(
                  child: Text(
                    "View More",
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),

          //! 1
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 1),
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Purchase"),
                      Text(
                        'Purchase italian food',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.5), fontSize: 12),
                      ),
                    ],
                  ),
                  Text(
                    "- RM 15.00",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),
          ),

          //! 2
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 1),
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Topup"),
                      Text(
                        'Topup balances in sayhappi wallet',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.5), fontSize: 12),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ],
                  ),
                  Text(
                    "RM 10.00",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),
          ),

          //! 3
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 1),
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Purchase"),
                      Text(
                        'Purchase italian food',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.5), fontSize: 12),
                      ),
                    ],
                  ),
                  Text(
                    "- RM 15.00",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),
          ),

          //! 4
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 1),
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Topup"),
                      Text(
                        'Topup balances in sayhappi wallet',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.5), fontSize: 12),
                      ),
                    ],
                  ),
                  Text(
                    "RM 5.00",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
