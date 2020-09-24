import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salon_mos/models/responsive.dart';
import 'package:salon_mos/pages/register_form.dart';
import 'package:salon_mos/widgets/circle.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    final double pinkSize = responsive.wp(80);
    final double orangeSize = responsive.wp(57);

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: responsive.height,
            color: Colors.white,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: -pinkSize * 0.3,
                  right: -pinkSize * 0.2,
                  child: Circle(
                    size: pinkSize,
                    colors: [
                      Colors.pink[300],
                      Color(0xfffcf1f2),
                    ],
                  ),
                ),
                Positioned(
                  top: -orangeSize * 0.35,
                  left: -orangeSize * 0.15,
                  child: Circle(
                    size: orangeSize,
                    colors: [
                      Colors.pink[300],
                      Color(0xfffcf1f2),
                    ],
                  ),
                ),
                Positioned(
                  top: pinkSize * 0.22,
                  child: Column(
                    children: [
                      Text(
                        'Register with Us Share\nMore And Win More',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: responsive.dp(1.9), color: Colors.black),
                      ),
                      // SizedBox(
                      //   height: responsive.dp(4.5),
                      // ),
                      // AvatarButton(
                      //   imageSize: responsive.wp(25),
                      // )
                    ],
                  ),
                ),
                RegisterForm(),
                Positioned(
                  left: 15,
                  top: 15,
                  child: SafeArea(
                    child: CupertinoButton(
                      color: Colors.black26,
                      padding: EdgeInsets.all(10),
                      borderRadius: BorderRadius.circular(30),
                      child: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
