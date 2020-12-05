import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class levelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RawMaterialButton(
            fillColor: Colors.blueAccent,
            elevation: 5.0,
            child: Center(
              child: Text("Easy" , style: TextStyle(color: Colors.white,fontSize: 25 , fontWeight: FontWeight.bold),),
            ),
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

    );
  }
}
