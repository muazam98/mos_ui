import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:salon_mos/Theme/constants.dart';
import 'package:salon_mos/pages/home_page.dart';
import 'package:salon_mos/pages/menu_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Make Over Station',
      theme: SalonTheme.buildLightTheme(),
      home: HomePage(),
    );
  }
}
