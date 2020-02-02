import 'package:flutter/material.dart';

class Singerlist extends StatefulWidget {

  _SingerlistState createState() => _SingerlistState();

}

class _SingerlistState extends State<Singerlist> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("singerlist"),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 32,
          ),
           Ink(
      color: Colors.blueGrey[900],
         child: ListTile(
            leading: CircleAvatar(
            backgroundImage: AssetImage("assets/img/wanyai.jpg"), 
              ),
            title: Text('แว่นใหญ่',style: TextStyle(fontSize: 20),),
            trailing: Icon(Icons.keyboard_arrow_right,),
            onTap: () {
              
            },
          ),
           ),
            Ink(
      color: Colors.blueGrey[900],
        child:  ListTile(
            leading: CircleAvatar(
            backgroundImage: AssetImage("assets/img/Stamp.jpg"), 
              ),
            title: Text('Stamp',style: TextStyle(fontSize: 20)),
            trailing: Icon(Icons.keyboard_arrow_right,),
            onTap: () {
              
            },
          ),
            ),
             Ink(
      color: Colors.blueGrey[900],
        child:  ListTile(
            leading: CircleAvatar(
            backgroundImage: AssetImage("assets/img/lazyloxy.png"), 
              ),
            title: Text('lazyloxy',style: TextStyle(fontSize: 20)),
            trailing: Icon(Icons.keyboard_arrow_right,),
            onTap: () {
              
            },
          ),
             ),
              Ink(
      color: Colors.blueGrey[900],
          child: ListTile(
            leading: CircleAvatar(
            backgroundImage: AssetImage("assets/img/Tong.jpg"), 
              ),
            title: Text('โต้งเมืองศรี',style: TextStyle(fontSize: 20)),
            trailing: Icon(Icons.keyboard_arrow_right,),
            onTap: () {
              
            },
          ),
              ),
               Ink(
      color: Colors.blueGrey[900],
         child:  ListTile(
            leading: CircleAvatar(
            backgroundImage: AssetImage("assets/img/poy.jpg"), 
              ),
            title: Text('ปอยฝ้าย มาลัยพร',style: TextStyle(fontSize: 20)),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              
            },
          ),
               ),
          SizedBox(
            height: 32,
          ),
         ],
     ), 
    );
  }

}