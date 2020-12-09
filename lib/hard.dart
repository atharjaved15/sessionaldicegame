import 'package:rflutter_alert/rflutter_alert.dart';
import 'dart:io';
import 'dart:math';
import 'package:alert_dialog/alert_dialog.dart';
import 'package:flutter/material.dart';
import 'LevelScreen.dart';
import 'firstScreen.dart';
import 'choiceScreen.dart';

class LevelHard extends StatefulWidget {
  @override
  _LevelHardState createState() => _LevelHardState();
}

class _LevelHardState extends State<LevelHard> {

  int dice_cout = 1;
  int user_pick = 0;
  int tries =5;
  bool mybool = true;
  int player;
  choiceScreen option;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Dice Rolling App"),
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
      body: Container(
        color: Colors.white,
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Text("Tap to role the dice",style: TextStyle(fontSize: 35,color: Colors.black, fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 70,
                ),
               // DisplayImage(),
            Container(
              child: GestureDetector(
                onTap: changeScreen,
                child: FlatButton(
                  onPressed: () {
                  setState(() {
                    dice_cout = Random().nextInt(5) + 1;
                    option.getOption(dice_cout);
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => choiceScreen()));
                  });
                },
                  child: Image(
                    height: 200,
                    image: AssetImage('Images/dice$dice_cout.png'),
                  ),
                ),
              ),
            ),
                /*Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: userInput(),
                    ),
                  ],
                ),*/
              ],
            ),
          ),
        ),
      ),

    );
  }
  String _text = "initial";
  String uc ;
  TextEditingController _c;

  @override
  initState(){
    _c = new TextEditingController();
    super.initState();
  }
  void changeScreen(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> choiceScreen()));
  }

  /*Widget userInput () {
    return  AlertDialog(
      title: Text("Guess it Right") ,
      content: TextField(
        controller: _c,
      ),
      actions: [
        FlatButton(
          child: Text("Save"),
          onPressed: () {
            Navigator.pop(context);
            setState(() {
              uc = _c.text;
              user_pick = int.parse(uc);
              tries--;


              if(tries==0) {
                alert(
                  context,
                  title: Text('Game Finished',textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
                  content: Text('Try to Play Again!!! ',textAlign: TextAlign.center,style: TextStyle(fontSize: 20)),
                  textOK: Text('OK'),
                );
                mybool =true;
                Navigator.push(context, MaterialPageRoute(builder: (context) => levelScreen()));
              }
              if(user_pick!=dice_cout){
                alert(
                  context,
                  title: Text('Wrong Answer',textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
                  content: Text('The Correct is $dice_cout ',textAlign: TextAlign.center,style: TextStyle(fontSize: 20)),
                  textOK: Text('OK'),
                );
                mybool=true;
              }
              if(user_pick==dice_cout){
                alert(
                  context,
                  title: Text('Congratulations',textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
                  content: Text('You Guessed it Right ',textAlign: TextAlign.center,style: TextStyle(fontSize: 20)),
                  textOK: Text('OK'),
                );
                mybool = true;
                player++;
              }
              if(player>=3){
                alert(
                  context,
                  title: Text('Congratulations',textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
                  content: Text('You have Got 3 Correct Guesses',textAlign: TextAlign.center,style: TextStyle(fontSize: 20)),
                  textOK: Text('OK'),
                );

              }
              Navigator.of(context, rootNavigator: true).pop(context);
              mybool=true;

            });
          },
        )
      ],
    );
  }*/
  Widget DisplayImage() {
      return Container(
        child: FlatButton(onPressed: () {
          setState(() {
            dice_cout = Random().nextInt(5) + 1;
            option.getOption(dice_cout);
            Navigator.push(context, MaterialPageRoute(builder: (context) => choiceScreen()));
          });
        },
        child: Image(
            height: 200,
            image: AssetImage('Images/dice$dice_cout.png'),
          ),
        ),
      );
    }

}
