import 'package:flutter/material.dart';
import 'dart:math';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      home: BallYesNo(),
    ),
  );
}

class BallYesNo extends StatelessWidget {
  const BallYesNo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Center(
          child: Text('Ask Me Anything'),
        ),
      ),
      body: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Card(
            color: Colors.white,
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(
                'Ask Your Quistions And Press That Button Bellow',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(
                () {
                  ballNumber = Random().nextInt(5) + 1;
                },
              );
            },
            child: Image.asset('assets/images/ball$ballNumber.png'),
          ),
        ],
      ),
    );
  }
}
