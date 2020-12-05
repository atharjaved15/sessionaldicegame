import 'package:flutter/material.dart';

class aboutus extends StatelessWidget {
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
