import 'package:flutter/material.dart';
import 'package:sessionaldicegame/AboutUS.dart';
import 'package:sessionaldicegame/LevelScreen.dart';

class firstScreen extends StatefulWidget {
  @override
  _firstScreenState createState() => _firstScreenState();
}

class _firstScreenState extends State<firstScreen> {
  @override
  void changeScreen( ){
    Navigator.push(context, MaterialPageRoute(builder: (context) => levelScreen()));
  }
  void changeScreen1( ){
    Navigator.push(context, MaterialPageRoute(builder: (context) => aboutus()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 200,
                margin: EdgeInsets.only(top: 20.0),
                padding: EdgeInsets.all(40.0),
                child: Center(child: Column(
                  children: <Widget>[
                    Text('WELOCME' , textAlign: TextAlign.center ,style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold , color: Colors.white) ,),
                    Text("Dice Rolling Fun Game" , style: TextStyle(color: Colors.white, fontSize: 20), ),
                  ],
                )),
              ),
              SizedBox(
                height: 200,
              ),
              Text('Its a Fun Time' , style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),),
              SizedBox(
                height: 200,
              ),
              RawMaterialButton(
                onPressed: changeScreen,
                fillColor: Colors.white,
                child: Center(child: Text('Start', style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold ),)),
              ),
              SizedBox(
                height: 10,
              ),
              RawMaterialButton(
                onPressed: changeScreen1,
                fillColor: Colors.blue,
                child: Center(child: Text('About US', style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold, color: Colors.white ),)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
