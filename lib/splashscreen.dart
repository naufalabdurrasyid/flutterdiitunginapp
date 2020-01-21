import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:diitungin/main.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen()); // define it once at root level.
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Main(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        Text(
        'Welcome to Diitungin',
        style: new TextStyle(
            fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'Bangers' ),
        ),
          Text(
            'Powered By Naufal',
            style: new TextStyle(
                fontSize: 10.0, color: Colors.yellow, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      ),
    );

  }
}