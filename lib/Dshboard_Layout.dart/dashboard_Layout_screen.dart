import 'package:flutter/material.dart';
import 'package:mem_store_app/re_usable/Custom_App_Bar.dart';

import '../re_usable/Custom_Drawer.dart';
import 'Assets_Module/assets_screen.dart';
import 'Chemicals_Module/chemicals_screen.dart';
import 'Products_Module/products_screen_module.dart';
import 'Raw_Materials_Module/raw_materials_screen.dart';
import 'widgets/Custom_Navigation_Tabs.dart';

class DashBoardScreen extends StatelessWidget {
  static const String routeName = './DashBoard_Screen';

  final List<Widget> _screens = [
    RawMaterialsScreen(),
    ChemicalsScreen(),
    ProductsScreen(),
    AssetsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
    return Scaffold(
      appBar: customAppBar(context: context, scaffoldKey: _scaffoldKey),
      body: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        drawer: CustomDrawer(),
        body: CustomNavigationTabs(
          screens: _screens,
        ),
      ),
    );
  }
}
