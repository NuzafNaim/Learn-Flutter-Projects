import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text('Dicee'),
          ),
        ),
        body: DiceePage(),
      ),
    ),
  );
}

class DiceePage extends StatelessWidget {
  const DiceePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image.asset('assets/images/dice1.png'),
        ),
        Expanded(
          child: Image.asset('assets/images/dice1.png'),
        ),
      ],
    );
  }
}
