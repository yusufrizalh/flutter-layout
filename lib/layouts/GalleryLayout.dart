// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';
import 'package:flutter_layouts/layouts/tabs/Tab1.dart';
import 'package:flutter_layouts/layouts/tabs/Tab2.dart';
import 'package:flutter_layouts/layouts/tabs/Tab3.dart';

void main() {
  runApp(GalleryLayout());
}

class GalleryLayout extends StatelessWidget {
  const GalleryLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gallery',
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
        child: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Column(
            children: <Widget>[
              TabBar(
                labelColor: Colors.black45,
                indicatorColor: Colors.red,
                labelPadding: EdgeInsets.all(2.0),
                labelStyle: TextStyle(
                  color: Colors.red,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
                unselectedLabelColor: Colors.black,
                unselectedLabelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                ),
                tabs: [
                  Tab(
                    text: 'Tab 1',
                  ),
                  Tab(
                    text: 'Tab 2',
                  ),
                  Tab(
                    text: 'Tab 3',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Tab1(),
                    Tab2(),
                    Tab3(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
