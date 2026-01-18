import 'package:flutter/material.dart';
import 'package:leanr_ui_2/models/drawer_itmes_model.dart';

class ItemInDrawer extends StatelessWidget {
  const ItemInDrawer({super.key, required this.item});
  final DrawerItmesModel item;
  @override
  Widget build(BuildContext context) {
    return ListTile(leading: Icon(item.icon), title: Text(item.title));
  }
}
