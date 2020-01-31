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
            backgroundImage: AssetImage("assets/img/wanyai.jpg"), // no matter how big it is, it won't overflow
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
            backgroundImage: AssetImage("assets/img/Stamp.jpg"), // no matter how big it is, it won't overflow
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
            backgroundImage: AssetImage("assets/img/lazyloxy.png"), // no matter how big it is, it won't overflow
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
            backgroundImage: AssetImage("assets/img/Tong.jpg"), // no matter how big it is, it won't overflow
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
            backgroundImage: AssetImage("assets/img/poy.jpg"), // no matter how big it is, it won't overflow
              ),
            title: Text('ปอยฝ้าย มาลัยพร',style: TextStyle(fontSize: 20)),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              
            },
          ),
               ),
      //          ),
      //      ListTile(
      //       leading: CircleAvatar(
      //       backgroundImage: AssetImage("assets/img/music5.jpg"), // no matter how big it is, it won't overflow
      //         ),
      //       title: Text('Moon',style: TextStyle(fontSize: 20)),
      //       trailing: Icon(Icons.keyboard_arrow_right,),
      //       onTap: () {
      //         print('Moon');
      //       },
      //     ),
      // //      Ink(
      // color: Colors.blueGrey[800],
      //      ListTile(
      //       leading: CircleAvatar(
      //       backgroundImage: AssetImage("assets/img/music5.jpg"), // no matter how big it is, it won't overflow
      //         ),
      //       title: Text('Moon',style: TextStyle(fontSize: 20)),
      //       trailing: Icon(Icons.keyboard_arrow_right,),
      //       onTap: () {
      //         print('Moon');
      //       },
      //     ),
      //      ),
      //      ListTile(
      //       leading: CircleAvatar(
      //       backgroundImage: AssetImage("assets/img/music5.jpg"), // no matter how big it is, it won't overflow
      //         ),
      //       title: Text('Moon',style: TextStyle(fontSize: 20)),
      //       trailing: Icon(Icons.keyboard_arrow_right,),
      //       onTap: () {
      //         print('Moon');
      //       },
      //     ),
           
          SizedBox(
            height: 32,
          ),
         ],
     ), 
    );
  }

}