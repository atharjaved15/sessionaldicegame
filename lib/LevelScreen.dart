import 'dart:io';
import 'package:flutter/material.dart';
import 'firstScreen.dart';
import 'package:sessionaldicegame/easyLevel.dart';
import 'hard.dart';

class levelScreen extends StatefulWidget {
  @override
  _levelScreenState createState() => _levelScreenState();
}

class _levelScreenState extends State<levelScreen> {
  void easylevel(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => simple()));
  }
  void hard(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => LevelHard()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Level"),
      ),
      drawer: Drawer(
        child: ListView(
          children:<Widget> [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Container(
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Text('Options', textAlign:TextAlign.left , style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
                ),
              ),
            ),
            ListTile(
              title: Text('Home Screen', style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
              onTap: () {
                Navigator.pop(context, MaterialPageRoute(builder: (context) => firstScreen()));
              },
            ),
            ListTile(
              title: Text('Exit', style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
              onTap: () {
                exit(0);
              },
            )
          ],
        ),
      ),
      backgroundColor: Colors.black87,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              margin: EdgeInsets.only(top: 40.0),
              padding: EdgeInsets.all(40.0),
              child: Center(child: Column(
                children: <Widget>[
                  Text('LEVELS' , textAlign: TextAlign.center ,style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold , color: Colors.white) ,),
                ],
              )),
            ),
            SizedBox(
              height: 150,
            ),
            Text("Choose Level" , style: TextStyle(color: Colors.white, fontSize: 20), ),
            SizedBox(
              height: 10,
            ),
            RawMaterialButton(
              fillColor: Colors.blueAccent,
              elevation: 5.0,
              child: Center(
                child: Text("Easy" , style: TextStyle(color: Colors.white,fontSize: 25 , fontWeight: FontWeight.bold),),
              ),
              onPressed: easylevel,
            ),
            SizedBox(
              height: 10,
            ),
            RawMaterialButton(
              onPressed: hard,
              fillColor: Colors.purple,
              elevation: 5.0,
              child: Center(
                child: Text("Hard" , style: TextStyle(color: Colors.white,fontSize: 25 , fontWeight: FontWeight.bold),),
              ),
            )

          ]
      ),

    );;
  }
}
