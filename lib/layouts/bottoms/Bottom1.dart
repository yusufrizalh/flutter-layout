// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';

void main() {
  runApp(Bottom1());
}

class Bottom1 extends StatelessWidget {
  const Bottom1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
              'Message',
              style: TextStyle(
                color: Colors.black,
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
