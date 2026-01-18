import 'package:flutter/material.dart';
import 'package:leanr_ui_2/helper/adaptive_layaout.dart';
import 'package:leanr_ui_2/layouts/desktop_layout.dart';
import 'package:leanr_ui_2/layouts/mobile_layout.dart';
import 'package:leanr_ui_2/layouts/tablet_layout.dart';
import 'package:leanr_ui_2/views/drawer_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
      drawer: DrawerView(color: Colors.white),
      key: scaffoldKey,
      backgroundColor: Color(0xffdbdbdb),
      appBar: MediaQuery.of(context).size.width > 1024
          ? null
          : AppBar(
              title: MediaQuery.of(context).size.width < 600
                  ? Text('Mobile Layout', style: TextStyle(color: Colors.white))
                  : Text(
                      'Tablet Layout',
                      style: TextStyle(color: Colors.white),
                    ),
              leading: IconButton(
                icon: Icon(Icons.menu),

                color: Colors.white,
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
              backgroundColor: Colors.black,
            ),
      body: AdaptiveLayout(
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => TabletLayout(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
