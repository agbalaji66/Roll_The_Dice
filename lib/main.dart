import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Center(child: Text('Roll The Dice')),
            backgroundColor: Colors.blueAccent,
          ),
          body: DicePage(),

          ///bottomNavigationBar: Center(child: Bott()),
        ),
      ),
    ),
  );
}

int leftDice() {
  int leftDiceNumber = 1;
  leftDiceNumber = Random().nextInt(6) + 1;
  return (leftDiceNumber);
}

int rightDice() {
  int rightDiceNumber = 1;
  rightDiceNumber = Random().nextInt(6) + 1;
  return (rightDiceNumber);
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Image.asset('images/dice$leftDiceNumber.png'),
          ),
          Expanded(
            child: Image.asset('images/dice$rightDiceNumber.png'),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: FloatingActionButton(
                  child: Text(
                    'Roll',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  backgroundColor: Colors.orange,
                  onPressed: () {
                    setState(() {
                      leftDiceNumber = leftDice();

                      /// print(leftDiceNumber);
                      rightDiceNumber = rightDice();
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
/*Expanded(
child: FlatButton(
onPressed: () {
setState(() {
// leftDiceNumber = Random().nextInt(6) + 1;
leftDiceNumber = leftDice();
});
},
child: Image.asset('images/dice$leftDiceNumber.png'),
),
),*/
