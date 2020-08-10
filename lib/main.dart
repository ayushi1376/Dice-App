import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          centerTitle: true,
          title:  Text("Dice App"),
          backgroundColor: Colors.yellow,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenum=1;
  int rightdicenum=1;
  void changeface(){
    setState(() {
      leftdicenum=Random().nextInt(6)+1;
      rightdicenum=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: FlatButton(
            onPressed: (){
              changeface();
            },
            child: Image.asset('images/dice$leftdicenum.png'),
          ),
          ),
          Expanded(child: FlatButton(
            onPressed: (){
              changeface();
            },
            child: Image.asset('images/dice$rightdicenum.png'),
          ),
          ),
        ],
      ),
    );
  }
}
