// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, prefer_final_fields, unused_field, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_layouts/layouts/bottoms/Bottom1.dart';
import 'package:flutter_layouts/layouts/bottoms/Bottom2.dart';
import 'package:flutter_layouts/layouts/bottoms/Bottom3.dart';

void main() {
  runApp(SettingsLayout());
}

class SettingsLayout extends StatelessWidget {
  const SettingsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings',
      debugShowCheckedModeBanner: false,
      home: DisplayLayout(),
    );
  }
}

class DisplayLayout extends StatefulWidget {
  DisplayLayout({Key? key}) : super(key: key);

  @override
  State<DisplayLayout> createState() => _DisplayLayoutState();
}

class _DisplayLayoutState extends State<DisplayLayout> {
  int _selectedItem = 0;

  final bottomOptions = [
    Bottom1(),
    Bottom2(),
    Bottom3(),
  ];

  void _onItemSelected(int position) {
    setState(() {
      _selectedItem = position;
    });
  }

  final bottomTitle = ['Message', 'Play', 'Account'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: bottomOptions.elementAt(_selectedItem),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.messenger,
            ),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calculate,
            ),
            label: "Play",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Account",
          ),
        ],
        currentIndex: _selectedItem,
        fixedColor: Colors.red,
        selectedLabelStyle: TextStyle(
          color: Colors.red,
          fontSize: 16.0,
        ),
        selectedIconTheme: IconThemeData(
          color: Colors.red,
          opacity: 1.0,
          size: 16.0,
        ),
        unselectedFontSize: 12.0,
        unselectedItemColor: Colors.black,
        unselectedIconTheme: IconThemeData(
          color: Colors.black,
          opacity: 1.0,
          size: 12.0,
        ),
        unselectedLabelStyle: TextStyle(fontSize: 12.0, color: Colors.black),
        onTap: _onItemSelected,
      ),
    );
  }
}
