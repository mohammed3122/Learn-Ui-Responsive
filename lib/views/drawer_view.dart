import 'package:flutter/material.dart';
import 'package:leanr_ui_2/models/drawer_itmes_model.dart';
import 'package:leanr_ui_2/widgets/item_drawer.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key, required this.color});
  final Color color;
  static final List<DrawerItmesModel> items = [
    DrawerItmesModel(icon: Icons.home, title: 'D A S H B O R D'),
    DrawerItmesModel(icon: Icons.settings, title: 'S E T T I N G S'),
    DrawerItmesModel(icon: Icons.info, title: 'A B O U T'),
    DrawerItmesModel(icon: Icons.logout, title: 'L O G O U T'),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: color,
      child: Column(
        children: [
          DrawerHeader(child: Icon(Icons.favorite, size: 70)),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ItemInDrawer(item: items[index]);
              },
              itemCount: items.length,
            ),
          ),
        ],
      ),
    );
  }
}
