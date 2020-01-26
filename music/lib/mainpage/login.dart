import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  const Login({Key key}): super(key: key);
  @override

  @override
  _LoginState createState() => new _LoginState();

}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/music.jpg"),
              fit: BoxFit.contain,
              alignment: Alignment.topCenter
            ), 
            ),
            child: SafeArea(child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 50),
                  height: MediaQuery.of(context).size.height*0.65,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Welcome",style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      )),
                      Text("Sign to Come"),SizedBox(height: 35,)
                    ],
                  ),
                )],
            ),),
        ),
      ),
    );
  }
  
}