// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';

void main() {
  runApp(Tab2());
}

class Tab2 extends StatelessWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tab 2',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Tab 2',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
