import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[100],
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Center(
            child: Text('I Am Poor'),
          ),
        ),
        body: Center(
          child: Image(
            image: AssetImage('assets/images/i_am_poor.jpg'),
          ),
        ),
      ),
    ),
  );
}
