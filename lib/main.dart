import 'package:flutter/material.dart';

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
class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: FlatButton(
            onPressed: (){
              print("Left button got pressed");
            },
            child: Image.asset('images/dice1.png'),
            ),
          ),
          Expanded(child: FlatButton(
            onPressed: (){
              print("Right button got pressed");
            },
            child: Image.asset('images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
