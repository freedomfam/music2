import 'package:flutter/material.dart';
import 'package:music/AudioPlayer/home.dart';
import 'package:music/mainpage/intro.dart';




class Splash extends StatefulWidget {

_SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override 
    void initState(){
      super.initState();
      Future.delayed(Duration(
        seconds: 3
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
        child: Image.asset("assets/img/as.png",
        fit: BoxFit.fill
        ),
      ),
      );

  }

}

    