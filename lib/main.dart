// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, unused_field, prefer_final_fields, unused_element, unused_local_variable, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import './layouts/HomeLayout.dart';
import './layouts/GalleryLayout.dart';
import './layouts/SettingsLayout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Menu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: NavDrawerMenu(),
    );
  }
}

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class NavDrawerMenu extends StatefulWidget {
  final _drawerItems = [
    DrawerItem("Home", Icons.home),
    DrawerItem("Gallery", Icons.photo),
    DrawerItem("Settings", Icons.settings)
  ];

  NavDrawerMenu({Key? key}) : super(key: key);

  @override
  State<NavDrawerMenu> createState() => _NavDrawerMenuState();
}

class _NavDrawerMenuState extends State<NavDrawerMenu> {
  int _selectedItem = 0;
  String avatarUrl =
      'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png';

  _getDrawerItem(int position) {
    switch (position) {
      case 0:
        return HomeLayout();
      case 1:
        return GalleryLayout();
      case 2:
        return SettingsLayout();
      default:
        return Text("No Layout is found!");
    }
  }

  _onSelectItem(int index) {
    setState(() {
      _selectedItem = index;
    });
    Navigator.of(context).pop(); // menutup menu navigasi
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];
    for (var menu = 0; menu < widget._drawerItems.length; menu++) {
      var drawer = widget._drawerItems[menu];
      drawerOptions.add(ListTile(
        leading: Icon(drawer.icon),
        title: Text(drawer.title),
        selected: menu == _selectedItem,
        onTap: () => _onSelectItem(menu),
      ));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._drawerItems[_selectedItem].title),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    avatarUrl,
                  ),
                ),
                onTap: () => print('Open your social media'),
              ),
              accountName: Text(
                'Yusuf Rizal',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                'rizal@inixindo.co.id',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Column(
              children: drawerOptions,
            ),
          ],
        ),
      ),
      body: _getDrawerItem(_selectedItem),
    );
  }
}
