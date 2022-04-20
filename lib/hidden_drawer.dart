import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:menu_escondido/pages/homepage.dart';
import 'package:menu_escondido/pages/settingspage.dart';

class Hidden_Drawer extends StatefulWidget {
  const Hidden_Drawer({Key? key}) : super(key: key);

  @override
  _Hidden_DrawerState createState() => _Hidden_DrawerState();
}

class _Hidden_DrawerState extends State<Hidden_Drawer> {
  List<ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'H O M E',
            baseStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            selectedStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            colorLineSelected: Colors.deepPurpleAccent),
        HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'S E T T I N G S',
          baseStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          selectedStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          colorLineSelected: Colors.deepPurpleAccent,
        ),
        SettingsPage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.deepPurple,
      screens: _pages,
      initPositionSelected: 0,
    );
  }
}
