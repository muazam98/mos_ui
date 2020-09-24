// import 'package:flutter/material.dart';
// import 'package:salon_mos/models/drawer_item_group.dart';
// import 'package:salon_mos/models/profile.dart';
// import 'package:salon_mos/pages/menu_page.dart';
// import 'package:salon_mos/pages/product_page.dart';
// import 'package:salon_mos/pages/referal_page.dart';
// import 'package:salon_mos/utils/drawer_items.dart';
// import 'package:salon_mos/utils/profiles.dart';

// import '../drawer_group_helpers.dart';
// import '../profile_helpers.dart';

// class DrawerWidget extends StatefulWidget {
//   final int selectedDrawerIndex;
//   DrawerWidget({@required this.selectedDrawerIndex});
//   @override
//   DrawerWidgetState createState() => DrawerWidgetState();
// }

// class DrawerWidgetState extends State<DrawerWidget> {
//   int selectedDrawerIndex;
//   int selectedProfileIndex;

//   final String backgroundUrl =
//       'https://cdn-images-1.medium.com/max/1920/1*-hRmYuz-CyZKe1GYcMTPPw.jpeg';

//   @override
//   void initState() {
//     super.initState();

//     selectedDrawerIndex = widget.selectedDrawerIndex;
//     selectedProfileIndex = 0;
//   }

//   @override
//   Widget build(BuildContext context) => Drawer(
//         child: Column(
//           children: <Widget>[
//             buildAccountInfo(),
//             Expanded(child: buildDrawerList()),
//           ],
//         ),
//       );

//   Widget buildDrawerList() => ListView.separated(
//         itemBuilder: (BuildContext context, int index) => buildDrawerItemGroup(
//             drawerGroups[index], toIndexOffset(drawerGroups, index)),
//         separatorBuilder: (BuildContext context, int index) => Divider(),
//         itemCount: drawerGroups.length,
//         padding: EdgeInsets.zero,
//       );

//   Widget buildDrawerItemGroup(DrawerItemGroup group, int indexOffset) {
//     final List<Widget> items = group.items
//         .asMap()
//         .map((index, item) {
//           final int currentIndex = index + indexOffset;
//           return MapEntry(
//             index,
//             ListTile(
//               leading: Icon(item.icon),
//               title: Text(item.name),
//               selected: selectedDrawerIndex == currentIndex,
//               onTap: () {
//                 setState(() {
//                   selectedDrawerIndex = currentIndex;
//                 });

//                 final item = getOffsetIndex(drawerGroups, currentIndex);
//                 print(
//                     'Selected index $selectedDrawerIndex with name ${item.name}');
//                 switch (selectedDrawerIndex) {
//                   case 0:
//                     Navigator.of(context).pop();
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(
//                         builder: (BuildContext context) => HomePage(),
//                       ),
//                     );
//                     break;
//                   case 1:
//                     Navigator.of(context).pop();
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(
//                         builder: (BuildContext context) => HomePage(),
//                       ),
//                     );
//                     break;
//                   case 2:
//                     break;
//                   case 3:
//                     break;
//                   case 4:
//                     Navigator.of(context).pop();
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(
//                         builder: (BuildContext context) => ReferralPage(),
//                       ),
//                     );
//                     break;

//                   default:
//                 }
//               },
//             ),
//           );
//         })
//         .values
//         .toList();

//     return Column(
//       children: [
//         group.header != null ? buildHeader(group.header) : Container(),
//       ]..addAll(items),
//     );
//   }

//   Widget buildHeader(String title) => Container(
//         margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//         width: double.infinity,
//         child: Text(
//           title,
//           style: Theme.of(context).textTheme.subhead,
//         ),
//       );

//   Widget buildAccountInfo() {
//     final List<Profile> otherProfiles =
//         getNotSelectedProfiles(selectedIndex: selectedProfileIndex);
//     final Profile selectedProfile = profiles[selectedProfileIndex];

//     return DrawerHeader(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage("assets/images/logo.png"),
//           fit: BoxFit.fitWidth,
//         ),
//       ),
//     );
//   }
// }
