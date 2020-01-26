import 'package:flutter/material.dart';
import 'package:music/AudioPlayer/home.dart';

import 'login.dart';

class Intro extends StatelessWidget{
  @override
  Widget build(BuildContext context){
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
            ),
            
            Row(
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
                             Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()
                            )
                            );
                          },
                          child: Stack(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset("assets/img/music.jpg", fit: BoxFit.cover,),
                              ),
                              Positioned(
                                right: 18.0,
                                top: 12.0,
                                child: Icon(Icons.bookmark, color: Colors.black12.withOpacity(0.6),size: 24),
                              )
                            ],
                          ),
                          // child: ClipRRect(
                          //   borderRadius: BorderRadius.circular(8.0),
                          //   child: Image.asset("assets/img/music.jpg", fit: BoxFit.cover, 
                          // ),
                          
                          //  children: <Widget>[
                          //   ClipRRect(
              
                          //     borderRadius: BorderRadius.circular(8.0),
                          //     child: Image.asset("assets/img/music.jpg", fit: BoxFit.cover, 
                          //     ),
                          //     ),
                          //   Positioned(
                          //     right: 50.0,
                          //     top: 12.0,
                          //     child: Icon(Icons.bookmark, color: Colors.black12.withOpacity(0.6),size: 24),
                          //   ),
                          // ],
                      // ),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()
                            )
                            );
                          },
                          child: Stack(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset("assets/img/music2.jpg", fit: BoxFit.cover, height: 150, width: 150,),
                              ),
                              Positioned(
                                right: 0.0,
                                top: 12.0,
                                child: Icon(Icons.bookmark, color: Colors.black12.withOpacity(0.6),size: 24),
                              )
                            ],
                          ),
                          // child: ClipRRect(
                          //   borderRadius: BorderRadius.circular(8.0),
                          //   child: Image.asset("assets/img/music.jpg", fit: BoxFit.cover, 
                          // ),
                          
                          //  children: <Widget>[
                          //   ClipRRect(
              
                          //     borderRadius: BorderRadius.circular(8.0),
                          //     child: Image.asset("assets/img/music.jpg", fit: BoxFit.cover, 
                          //     ),
                          //     ),
                          //   Positioned(
                          //     right: 50.0,
                          //     top: 12.0,
                          //     child: Icon(Icons.bookmark, color: Colors.black12.withOpacity(0.6),size: 24),
                          //   ),
                          // ],
                      // ),
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
              ),
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

