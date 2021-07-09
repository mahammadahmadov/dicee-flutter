import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
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
  int leftDiceVal = 1;
  int rightDiceVal = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceVal = Random().nextInt(6) + 1;
      rightDiceVal = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // flex: 1,
            child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('assets/images/dice$leftDiceVal.png'),
            ),
          ),
          Expanded(
            // flex: 1,
            child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('assets/images/dice$rightDiceVal.png'),
            ),
          )
        ],
      ),
    );
  }
}
