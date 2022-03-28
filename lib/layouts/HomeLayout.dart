// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, unused_field, unused_element

import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(HomeLayout());
}

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
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
  void _showModalSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            height: 200.0,
            color: Colors.red,
            child: Center(
              child: Text(
                "Modal Bottom Sheet",
                textScaleFactor: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Home Layout',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(
                12.0,
              ),
            ),
            ElevatedButton(
              onPressed: _showModalSheet,
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                padding: EdgeInsets.all(
                  6.0,
                ),
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: Text(
                'Modal Sheet Button',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: ShowBottomSheet(),
    );
  }
}

class ShowBottomSheet extends StatelessWidget {
  const ShowBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.red,
      child: Icon(
        Icons.open_in_browser,
        color: Colors.white,
      ),
      onPressed: () {
        showBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              color: Colors.grey[300],
              height: 350.0,
            );
          },
        );
      },
    );
  }
}
