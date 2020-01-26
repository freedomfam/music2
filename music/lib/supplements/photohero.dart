// import 'package:flutter/material.dart';
// import 'package:music/AudioPlayer/home.dart';

// class PhotoHero extends StatelessWidget {
//   const PhotoHero (ClipRRect clipRRect, {Key key , this.photo,this.onTap, this.width}): super(key:key);

//   final String photo;
//   final VoidCallback onTap;
//   final double width;

//   Widget build(BuildContext context){
//     return SizedBox(
//       width: width,
//       child: Hero(
//         tag: photo,
//         child: Material(
//           color: Colors.green,
//           child: InkWell(
//                           customBorder: CircleBorder(),
//                           onTap: (){
//                              Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()
//                             )
//                             );
//                           },
//                           child: Stack(
//                             children: <Widget>[
//                               ClipRRect(
//                                 borderRadius: BorderRadius.circular(20.0),
//                                 child: Image.asset("assets/img/music2.jpg", fit: BoxFit.cover, height: 150, width: 150,),
//                               ),
//                               Positioned(
//                                 right: 18.0,
//                                 top: 12.0,
//                                 child: Icon(Icons.bookmark, color: Colors.black12.withOpacity(0.6),size: 24),
//                               )
//                             ],
//                           ),
//                           // child: ClipRRect(
//                           //   borderRadius: BorderRadius.circular(8.0),
//                           //   child: Image.asset("assets/img/music.jpg", fit: BoxFit.cover, 
//                           // ),
                          
//                           //  children: <Widget>[
//                           //   ClipRRect(
              
//                           //     borderRadius: BorderRadius.circular(8.0),
//                           //     child: Image.asset("assets/img/music.jpg", fit: BoxFit.cover, 
//                           //     ),
//                           //     ),
//                           //   Positioned(
//                           //     right: 50.0,
//                           //     top: 12.0,
//                           //     child: Icon(Icons.bookmark, color: Colors.black12.withOpacity(0.6),size: 24),
//                           //   ),
//                           // ],
//                       // ),
//                       ),
                      
//           // child: InkWell(
//           //   onTap: onTap,
//           //   child: Image.asset(
//           //     photo, fit: BoxFit.contain,
//             ),
//           ),
//     );
//   }
// }