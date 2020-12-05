import 'package:flutter/material.dart';
import 'package:sessionaldicegame/easyLevel.dart';

class levelScreen extends StatefulWidget {
  @override
  _levelScreenState createState() => _levelScreenState();
}

class _levelScreenState extends State<levelScreen> {
  void easylevel(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => simple()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
