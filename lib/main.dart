import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sessionaldicegame/firstScreen.dart';

void main() { runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.push(context, MaterialPageRoute(builder:
                (context) => firstScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                minRadius: 10,
                maxRadius: 100,
                backgroundImage: AssetImage("Images/pic.jpg"),
              ),
              SizedBox(
                height: 30,
              ),
              Text('SP17-BCS-034', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),) ,
              Text('Muhammad Athar Javed', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            ],
          ),
        )
    );
  }
}
