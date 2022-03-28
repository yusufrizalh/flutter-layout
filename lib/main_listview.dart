// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Layout',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: CustomLayout(),
    );
  }
}

class CustomLayout extends StatefulWidget {
  CustomLayout({Key? key}) : super(key: key);

  @override
  State<CustomLayout> createState() => _CustomLayoutState();
}

class _CustomLayoutState extends State<CustomLayout> {
  final List bulan = [
    "Januari",
    "Februari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Layout'),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: ((context, index) {
            return Card(
              child: ListTile(
                title: Text(
                  bulan[index],
                  style: TextStyle(fontSize: 22.0),
                ),
                subtitle: Text('Deskripsi dari bulan ' + bulan[index]),
                leading: CircleAvatar(
                  child: Text(
                    bulan[index][0],
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                trailing: Icon(Icons.message),
              ),
            );
          }),
          itemCount: bulan.length,
        ),
      ),
    );
  }
}
