import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:music/AudioPlayer/home.dart';
import 'package:music/mainpage/Textlogin.dart';



class Intro extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    timeDilation = 3.0;
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 32.0,
            ),
           new CustomText(),
           SizedBox(
             height: 32.0,
            
           ),
            Text('Colection', style: TextStyle( color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40.0),),
            SizedBox(
              height: 32.0,
            ),album()
            ,
            SizedBox(
                height: 32,
              ),cicleavatar()
         ],
        ),
      ),
    );
  }
   Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Homepage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
}

class album extends StatelessWidget {
  const album({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(width: 15,),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 150.0,
                width: 300,
                child: InkWell(
                  customBorder: CircleBorder(),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return album2();
                        }));
                  },
                  child: Stack(
                    children: <Widget>[
                      Hero(
                        tag: "imageHero" ,
                        child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset("assets/img/music.jpg", fit: BoxFit.cover, height: 150, width: 150,),
                      ),
                      ),
                      Positioned(
                        right: 18.0,
                        top: 12.0,
                        child: Icon(Icons.bookmark, color: Colors.black12.withOpacity(0.6),size: 24),
                      )
                    ],
                  ),
                 
              ),
              
              ),
              SizedBox(
                height: 10,
              ), Padding(
                 padding: const EdgeInsets.only(left: 20) ,
                child: Text("Thailand",style: TextStyle(color: Colors.white, fontSize: 30)
              )
              )
              ],
          ),
        ),
        SizedBox(
          width: 30.0,
        ) ,
          Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: InkWell(
                  customBorder: CircleBorder(),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return album3();
                        }));
                  },
                  child: Stack(
                    children: <Widget>[
                     Hero(
                        tag: "imageHero2" ,
                        
                        child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset("assets/img/music.jpg", fit: BoxFit.cover, height: 150, width: 150,),
                      ),
                      ),
                      Positioned(
                        right: 0.0,
                        top: 12.0,
                        child: Icon(Icons.bookmark, color: Colors.black12.withOpacity(0.6),size: 24),
                      )
                    ],
                  ),
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                 padding: const EdgeInsets.only(left: 20) ,
                child: Text("English",style: TextStyle(color: Colors.white, fontSize: 30)
              )
              ),
            ]   
          ),
        ), 
      ],
      );
  }
}

class cicleavatar extends StatelessWidget {
  const cicleavatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    timeDilation = 3.0;
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(children: <Widget>[
        InkWell(
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blue,
          child: Container(
            child: Icon(Icons.music_note),
          ),
        ),onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Listsinger()
                  )
                  );
                },
          ),
          SizedBox(
            height: 8,
          ),
          Text("ศิลปิน",style: TextStyle(fontSize: 20,color: Colors.white),)
          ],
        ),
        ),
        Expanded(
         child: Column(children: <Widget>[
        InkWell(
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.lightGreen[400],
          child: Container(
            child: Icon(Icons.list),
          ),
        ),onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()
                  )
                  );
                },
          ),
          SizedBox(
            height: 12,
          ),
          Text("เพลง",style: TextStyle(fontSize: 15,color: Colors.white),)
          ],

         
          
        ),
        ),
         Expanded(
         child: Column(children: <Widget>[
        InkWell(
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.red,
          child: Container(
            child: Icon(Icons.video_library),
          ),
        ),onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()
                  )
                  );
                },
          ),
          SizedBox(
            height: 10,
          ),
          Text("วีดีโอ",style: TextStyle(fontSize: 15,color: Colors.white),)
          ],

         
          
        ),
        ),
      ],
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.15),
      child: Row(children: <Widget>[
        SizedBox(
          width: 8.0,
        ),
        Icon(Icons.search, color: Colors.white),
        SizedBox(
          width: 8.0,
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search music',
              hintStyle: TextStyle(color: Colors.grey ),
              border: InputBorder.none
            ),
          ),
        ),
        SizedBox(
          width: 8.0,
        ),
        Icon(Icons.mic, color: Colors.white),
        SizedBox(
          width: 8.0,
        )
      ],),
    );
  }
}

class album2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Column(children: <Widget>[
            Hero(
            tag: 'imageHero',
            child: Image.asset('assets/img/music2.jpg'),
          ),Container(child: Text("Album ที่ได้ความนิยมที่สุด",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),)

          ],)
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

class album3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Column(children: <Widget>[
            Hero(
            tag: 'imageHero2',
            child: Image.asset('assets/img/music5.jpg'),
          ),Container(child: Text("Album ที่ได้ความนิยมที่สุด",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),)

          ],)
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}