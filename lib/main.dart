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
          DiceFace(
            diceVal: leftDiceVal,
            onTap: () {
              changeDiceFace();
            },
          ),
          DiceFace(
            diceVal: rightDiceVal,
            onTap: () {
              changeDiceFace();
            },
          )
        ],
      ),
    );
  }
}

class DiceFace extends StatelessWidget {
  DiceFace({required this.diceVal, required this.onTap});

  final int diceVal;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // flex: 1,
      child: TextButton(
        onPressed: onTap,
        child: Image.asset('assets/images/dice$diceVal.png'),
      ),
    );
  }
}
