// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// Stack Widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack View',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: StackView(),
    );
  }
}

class StackView extends StatefulWidget {
  StackView({Key? key}) : super(key: key);

  @override
  State<StackView> createState() => _StackViewState();
}

class _StackViewState extends State<StackView> {
  var date = DateTime.now(); // waktu saat ini

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lock Screen'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/07/27/17/14/mountains-862870_960_720.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            child: Text(
              date.hour.toString() + ':' + date.minute.toString(),
              style: TextStyle(
                fontSize: 46.0,
                color: Colors.white,
              ),
            ),
            right: 40.0,
            top: 110.0,
          ),
          Positioned(
            child: Text(
              'Surabaya, Indonesia',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
            right: 40.0,
            top: 160.0,
          ),
          Positioned(
            child: Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(
                      14.0,
                    ),
                    child: Text(
                      'Quotes of the Day',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 0,
                      left: 16.0,
                      right: 16.0,
                      bottom: 8.0,
                    ),
                    child: Text('Countinuous Learning and Keep Up to Date'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 8.0,
                      left: 16.0,
                      right: 16.0,
                      bottom: 32.0,
                    ),
                    child: Text('- INIXINDO -'),
                  ),
                ],
              ),
            ),
            right: 10.0,
            left: 10.0,
            bottom: 40.0,
          ),
        ],
      ),
    );
  }
}
