import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice_app_sampel'),
          backgroundColor: Colors.red,
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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: (){
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                  print('leftDiceNumber = $leftDiceNumber ');
                });
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: (){
                setState(() {
                  rightDiceNumber = Random().nextInt(6) + 1;
                  print('rightDiceNumber = $rightDiceNumber ');
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  var leftDiceNumber = 1;
  var rightDiceNumber = 2;
}



