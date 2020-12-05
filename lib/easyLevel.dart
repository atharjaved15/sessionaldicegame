import 'package:flutter/material.dart';
import 'dart:math';
import 'package:alert_dialog/alert_dialog.dart';
class simple extends StatefulWidget {
  @override
  _simpleState createState() => _simpleState();
}

class _simpleState extends State<simple> {
  int left_dice=1;
  int right_dice=1;
  int left_count=0;
  int right_count=0;
  String winer=null;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Tap to role the dice",style: TextStyle(fontSize: 35,color: Colors.black, fontWeight: FontWeight.bold),),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: FlatButton(onPressed: (){
                    setState(() {
                      left_dice=Random().nextInt(5)+1;
                      left_count=left_count+left_dice;
                    });
                  }
                    , child: Image(
                      image: AssetImage('Images/dice$left_dice.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(onPressed: (){
                    setState(() {
                      right_dice=Random().nextInt(5)+1;
                      right_count=right_count+right_dice;
                    });
                  }
                    , child: Image(
                      image: AssetImage('Images/dice$right_dice.png'),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              margin: EdgeInsets.only(top: 100),
              child: FlatButton(onPressed: (){
                setState(() {

                  Check();
                  alert(
                    context,
                    title: Text('Winer is',textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
                    content: Text('$winer ',textAlign: TextAlign.center,style: TextStyle(fontSize: 20)),
                    textOK: Text('Done'),
                  );
                  reset();
                });
              }
                  , child: Text("Check Result",style: TextStyle(fontSize: 30,color: Colors.white),)),
            ),
          ],
        ),
      ),
    );
  }
  void Check()
  {
    if (left_count>right_count)
    {
      winer= "Winner is Left Dice with $left_count scores";
    }
    else if(left_count<right_count)
    {
      winer= "Winner is Right Dice with $right_count scores";
    }
    else{
      winer = "Its a Tie";
    }
  }
  void reset(){
  left_count=0;
  right_count=0;
  }
}

