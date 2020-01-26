import 'package:flutter/material.dart';
import 'package:music/AudioPlayer/home.dart';
import 'package:music/mainpage/intro.dart';

import 'hero.dart';


class Splash extends StatefulWidget {

_SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override 
    void initState(){
      super.initState();
      Future.delayed(Duration(
        seconds: 5
      ),() {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => Intro()));
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("assets/img/music2.jpg",
        fit: BoxFit.fill
        ),
      ),
      
      );
      

    
  }

}

    