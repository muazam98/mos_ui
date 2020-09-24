import 'package:flutter/material.dart';
import 'package:salon_mos/models/responsive.dart';
import 'package:salon_mos/pages/icon_container.dart';
import 'package:salon_mos/widgets/circle.dart';
import 'package:salon_mos/widgets/login_form.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    final double yellowSize = responsive.wp(80);
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
                Positioned(
                  top: -orangeSize * 0.55,
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
                  top: yellowSize * 0.35,
                  child: Column(
                    children: [
                      IconContainer(
                        size: responsive.wp(30),
                      ),
                      SizedBox(
                        height: responsive.dp(3),
                      ),
                      // Text(
                      //   'Hello Again\nWelcome Back!',
                      //   textAlign: TextAlign.center,
                      //   style: TextStyle(fontSize: responsive.dp(1.6)),
                      // )
                    ],
                  ),
                ),
                LoginForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
