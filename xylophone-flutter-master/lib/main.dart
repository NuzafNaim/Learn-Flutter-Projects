import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlayAudio(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  PlayAudio(1);
                },
                child: null,
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: () {
                  PlayAudio(2);
                },
                child: null,
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                onPressed: () {
                  PlayAudio(3);
                },
                child: null,
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  PlayAudio(4);
                },
                child: null,
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  PlayAudio(5);
                },
                child: null,
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.indigo),
                onPressed: () {
                  PlayAudio(6);
                },
                child: null,
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.purple),
                onPressed: () {
                  PlayAudio(7);
                },
                child: null,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
