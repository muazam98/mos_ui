import 'package:flutter/material.dart';
import 'package:salon_mos/Theme/constants.dart';
import 'package:salon_mos/models/responsive.dart';
import 'package:salon_mos/widgets/drawer_widget.dart';

class ReferralPage extends StatefulWidget {
  ReferralPage({Key key}) : super(key: key);

  @override
  _ReferralPageState createState() => _ReferralPageState();
}

class _ReferralPageState extends State<ReferralPage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("My Referral", style: SalonTheme.title),
      ),
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   elevation: 0.0,
      //   backgroundColor: Colors.transparent,
      //   title: Text(
      //     "Referral Rewards",
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   centerTitle: false,
      // ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 20),
        width: double.infinity,
        height: responsive.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: 15,
            // ),
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(10.0),
            //   child: Image(
            //     width: 150,
            //     image: AssetImage(
            //       "assets/images/referral.png",
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Share your referal links/code and earn points to get exciting and mega discounts.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              width: double.infinity,
              height: responsive.dp(7),
              child: new Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "398052D44C2C5894F7E8DF95C31A3107",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    FlatButton(
                      child: Text(
                        "SHARE",
                        style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: responsive.dp(1.8)),
                      ),
                      onPressed: () {
                        print("share");
                      },
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              "Your referrals",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 13,
            ),
            Image(
              width: 200,
              image: AssetImage(
                "assets/images/qrcode.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
