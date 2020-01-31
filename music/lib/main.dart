import 'package:flutter/material.dart';
import 'package:music/AudioPlayer/home.dart';

import 'package:music/supplements/splash.dart';

import 'mainpage/Textlogin.dart';
import 'mainpage/intro.dart';
import 'mainpage/login.dart';
import 'mainpage/singer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue, 
      ),
      home: Splash(),
    );
  }
}
