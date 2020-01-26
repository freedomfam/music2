
// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:music/AudioPlayer/home.dart';
// import 'package:music/supplements/photohero.dart';


// void main() {
//   runApp(new MaterialApp(
//     routes: <String, WidgetBuilder>{
//       "/Homepage":(BuildContext context) => new Homepage(),
      
//     },
//   ));
// }

// class HeroAnimation extends StatelessWidget{
//   Widget build(BuildContext context) {
//     timeDilation = 5.0;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("ART NAja"),
//       ),
//       body: Column(children: <Widget>[
//         Container(
//         width: 500,
//       ),photoItem(context,'assets/img/music.jpg',),
//       SizedBox(
//         height: 20,
//       ),
//       Text("Login"),
//       Row(
//         children: <Widget>[
//          RaisedButton(
//           child: Text('Go!'),
//           onPressed: () {
//             Navigator.of(context).push(_createRoute());
//           },
//         ),
//         ],
//       )
//       ],
//     ),
//     );
//   }

//   Route _createRoute() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => Homepage(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       return child;
//     },
//   );
// }
// }

// Widget photoItem(BuildContext context,String image){
// return Column(
//         children:<Widget>[ 
//           PhotoHero(
//           photo: 'assets/img/music.jpg',
          
//           width: 200.0,
          
//           onTap: () {
//             Navigator.of(context).push(MaterialPageRoute<void>(
//               builder: (BuildContext context) {
//                 return Scaffold(
//                   appBar: AppBar(
//                     title: const Text('ART Handsome'),
//                   ),
//                   body: Container(
//                     // The blue background emphasizes that it's a new route.
                   
//                     color: Colors.lightBlueAccent,
//                     padding: const EdgeInsets.all(16.0),
//                     alignment: Alignment.topLeft,
//                     child: PhotoHero(

//                       photo: 'assets/img/music.jpg',
                      
//                       width: 100.0,
//                       onTap: () {
//                         Navigator.push(context,
//                      MaterialPageRoute(builder: (context) => Homepage(),
//             )
//                         );
//             },
//                     ),
                    
//                   ),
//                 );
//               }
//             ));
//           },
//         ),

//         // PhotoHero(
//         //   photo: 'images/AA.jpg',
//         //   width: 200.0,
//         //   onTap: () {
//         //     Navigator.of(context).push(MaterialPageRoute<void>(
//         //       builder: (BuildContext context) {
//         //         return Scaffold(
//         //           appBar: AppBar(
//         //             title: const Text('ART Handsome'),
//         //           ),
//         //           body: Container(
//         //             // The blue background emphasizes that it's a new route.
                   
//         //             color: Colors.lightBlueAccent,
//         //             padding: const EdgeInsets.all(16.0),
//         //             alignment: Alignment.topLeft,
//         //             child: PhotoHero(

//         //               photo: 'images/AA.jpg',                     
//         //               width: 100.0,

                      
//         //               onTap: () {
//         //                 Navigator.push(context,
//         //              MaterialPageRoute(builder: (context) => Page2(),
//         //     )
//         //                 );
//         //     },
//         //             ),
                    
//         //           ),
//         //         );
//         //       }
//         //     ));
//         //   },
//         // ),

        

//         ],
        
        
//       );
//     }