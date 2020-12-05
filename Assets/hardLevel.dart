import 'package:flutter/material.dart';
import 'LevelScreen.dart';

class LevelHard extends StatefulWidget {
  @override
  _LevelHardState createState() => _LevelHardState();
}

class _LevelHardState extends State<LevelHard> {
  @override
  Widget build(BuildContext context) {
    return  Container(
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

                    }),

                    ),
                Expanded(
                  child: FlatButton(onPressed: (){
                    setState(() {
                      //right_dice=Random().nextInt(5)+1;
                      //right_count=right_count+right_dice;
                    });
                  }
                    , child: Image(
                      //image: AssetImage('Images/dice$right_dice.png'),
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

                  //Check();
                  //alert(
                    /*context,
                    title: Text('Winer is',textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
                    content: Text('$winer ',textAlign: TextAlign.center,style: TextStyle(fontSize: 20)),
                    textOK: Text('Done'),
                  );
                  reset();
*/                });
              }
                  , child: Text("Check Result",style: TextStyle(fontSize: 30,color: Colors.white),)),
            ),
          ],
        ),
      ),
    );
  }
}
