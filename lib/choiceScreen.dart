import 'package:alert_dialog/alert_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'hard.dart';

import 'LevelScreen.dart';
int choice;

class choiceScreen extends StatefulWidget {

  void  getOption(int a){
    choice = a;
  }
  @override
  _choiceScreenState createState() => _choiceScreenState();
}

class _choiceScreenState extends State<choiceScreen> {
  String _text = "initial";
  String uc ;
  TextEditingController _c;
  int user_pick = 0;
  int tries =5;
  bool mybool = true;
  int player;



  @override
  Widget build(BuildContext context) {
      return  MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black87,
          body: Column(
            children: [
              AlertDialog(
                title: Text("Guess it Right") ,
                content: TextField(
                  controller: _c,
                ),
                actions: [
                  FlatButton(
                    child: Text("Save"),
                    onPressed: () {

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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => levelScreen()));
                        }
                        if(user_pick!=choice){
                          alert(
                            context,
                            title: Text('Wrong Answer',textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
                            content: Text('The Correct is $choice ',textAlign: TextAlign.center,style: TextStyle(fontSize: 20)),
                            textOK: Text('OK'),
                          );
                        }
                        if(user_pick==choice){
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LevelHard()));

                      });
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      );
  }
}
