import 'package:flutter/material.dart';

class firstScreen extends StatefulWidget {
  @override
  _firstScreenState createState() => _firstScreenState();
}

class _firstScreenState extends State<firstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello"),
      ),
    );
  }
}
