import 'package:flutter/material.dart';
import 'package:leanr_ui_2/layouts/tablet_layout.dart';
import 'package:leanr_ui_2/views/drawer_view.dart';
import 'package:leanr_ui_2/widgets/grid_item.dart';
import 'package:leanr_ui_2/widgets/list_item.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: DrawerView(color: Colors.transparent)),
        Expanded(flex: 3, child: TabletLayout()),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              children: [
                Expanded(flex: 3, child: GridItem()),
                Expanded(flex: 1, child: ListItem()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
