import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:music/mainpage/singer.dart';

class Listsinger extends StatefulWidget{
  _ListsingerState createState() => _ListsingerState();
  }

class _ListsingerState extends State<Listsinger> {
  PageController pageController;
  int currentPaga = 0;
  
  @override
  void initState(){
    super.initState();
    pageController = PageController(
      initialPage: currentPaga,
      keepPage: false,
      viewportFraction: 0.5);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        centerTitle: true,
        title: Text("ศิลปิน"),
      ),
     body: ListView(
        children: <Widget>[
          SizedBox(
            height: 32,
          ),
          Ink(
      color: Colors.blueGrey[800],
           child:  ListTile(
            title: Text('ศิลปินชายเดี่ยวไทย',style: TextStyle(color: Colors.white),),
            trailing: Icon(Icons.keyboard_arrow_right,color: Colors.white,),
            onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => Singerlist()
                  )
                  );
            },
          ),
          ),
         
           Ink(
      color: Colors.blueGrey[800],
           child:  ListTile(
            title: Text('ศิลปินหญิงเดี่ยวไทย ',style: TextStyle(color: Colors.white),),
            trailing: Icon(Icons.keyboard_arrow_right,color: Colors.white,),
            onTap: () {
              print('Sun');
            },
          ),
          ),
            Ink(
      color: Colors.blueGrey[800],
           child:  ListTile(
            title: Text('ศิลปินกลุ่มไทย',style: TextStyle(color: Colors.white),),
            trailing: Icon(Icons.keyboard_arrow_right,color: Colors.white,),
            onTap: () {
              print('Sun');
            },
          ),
          ),
          SizedBox(
            height: 35,
          ),
            Ink(
          color: Colors.blueGrey[800],
           child:  ListTile(
            title: Text('ศิลปินชายเดี่ยว อินเตอร์',style: TextStyle(color: Colors.white),),
            trailing: Icon(Icons.keyboard_arrow_right,color: Colors.white,),
            onTap: () {
              print('Sun');
            },
          ),
          ),

        Ink(
          color: Colors.blueGrey[800],
           child:  ListTile(
            title: Text('ศิลปินหญิงเดี่ยว อินเตอร์',style: TextStyle(color: Colors.white),),
            trailing: Icon(Icons.keyboard_arrow_right,color: Colors.white,),
            onTap: () {
              print('Sun');
            },
          ),
          ),
           Ink(
            color: Colors.blueGrey[800],
           child:  ListTile(
            title: Text('ศิลปินกลุ่ม อินเตอร์',style: TextStyle(color: Colors.white),),
            trailing: Icon(Icons.keyboard_arrow_right,color: Colors.white,),
            onTap: () {
              print('Sun');
            },
          ),
          ),
         ],
     ),
      );

    
  
  }
   
     
      
}