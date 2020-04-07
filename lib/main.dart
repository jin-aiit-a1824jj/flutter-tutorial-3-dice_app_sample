import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
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
                print('Left button got pressed.');
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: (){
                print('Right button got pressed.');
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
