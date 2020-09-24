import 'package:meta/meta.dart';

import 'drawer_item.dart';

@immutable
class DrawerItemGroup {
  final String header;
  final List<DrawerItem> items;

  const DrawerItemGroup({
    @required this.items,
    this.header,
  });
}
