// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:quanlykhoahoc/home/home.dart';

void main() => {runApp(MyApp())};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Welcome to Flutter'),
        // ),
        body: SafeArea(
          child: Body(),
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final myController = TextEditingController();
  final password = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    myController.addListener(() {
      _printLatestValue();
    });
    password.addListener(() {
      _printPasswordtValue();
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myController.dispose();
    password.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    print('Second text field: ${myController.text}');
  }

  void _printPasswordtValue() {
    print('Second text field: ${password.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(32),
        child: ListView(
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: SizedBox(
                    child: Image(
                      image: AssetImage('assets/ic_fpt_is.png'),
                      // color: Colors.orange,
                    ),
                    width: 200,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 32),
                  child: Text(
                    "FIS INSIGHT PORTAL",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: SizedBox(
                    child: Image(
                      image: AssetImage('assets/stripe.png'),
                      // color: Colors.orange,
                    ),
                    width: 100,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Text(
                    "ĐĂNG NHẬP HỆ THỐNG",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: "Username",
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: "Password",
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 32),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size.fromHeight(
                                40), // fromHeight use double.infinity as width and 40 is the height
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                            );
                          },
                          child: Text('Text Of Button'),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 24),
                  child: SizedBox(
                    child: Image(
                      image: AssetImage('assets/swipe.png'),
                      // color: Colors.orange,
                    ),
                    // width: 100,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
