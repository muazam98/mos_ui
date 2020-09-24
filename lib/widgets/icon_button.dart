import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData iconData;
  final Function onPressed;

  IconButtonWidget(this.iconData, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          iconData,
          color: Colors.white,
          size: 22,
        ),
        onPressed: onPressed);
  }
}
