import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(
            child: Text('Dicee'),
          ),
        ),
        body: DiceePage(),
      ),
    ),
  );
}

class DiceePage extends StatefulWidget {
  const DiceePage({Key? key}) : super(key: key);

  @override
  _DiceePageState createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceeFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: colum(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    changeDiceeFace();
                  },
                  child: Image.asset('assets/images/dice$leftDiceNumber.png')),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    changeDiceeFace();
                  },
                  child: Image.asset('assets/images/dice$rightDiceNumber.png')),
            ),
          ),
        ],
      ),
    );
  }
}
