import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salon_mos/models/drawer_item.dart';
import 'package:salon_mos/models/drawer_item_group.dart';

const DrawerItemGroup drawerGroup1 = DrawerItemGroup(items: [
  DrawerItem(name: 'Home', icon: FontAwesomeIcons.home),
  DrawerItem(name: 'Sign In / Register', icon: FontAwesomeIcons.user),
  DrawerItem(name: 'Appoinments', icon: FontAwesomeIcons.tasks),
  DrawerItem(name: 'My Orders', icon: FontAwesomeIcons.shoppingCart),
  DrawerItem(name: 'My Referral', icon: Icons.person_add),
]);

const DrawerItemGroup drawerGroup2 = DrawerItemGroup(
  // header: 'Subheader',
  items: [
    // DrawerItem(name: 'Sign In', icon: FontAwesomeIcons.signInAlt),
    DrawerItem(name: 'Log Out', icon: Icons.power_settings_new),
  ],
);

const List<DrawerItemGroup> drawerGroups = [drawerGroup1, drawerGroup2];
