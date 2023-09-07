import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar:  AppBar(
        title: const Text('My First App'),
        centerTitle: true, //center title in appbar
        backgroundColor: Colors.deepOrange.shade700,
      ),

      body: //const Text('OK, I\'m right'),
      const Center( // use this to center body app
        child: Text('OK, I\'m right',
        style: TextStyle(
          fontSize: 30.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.cyan,
          fontFamily: 'Itim', // added fonts/Itim-Regular.ttf and revise pubspec.yaml about fonts.
        ),), //must add child: to use its parents
      ),

      floatingActionButton:  FloatingActionButton(onPressed: () {},
      child: const Text('Click'),),
      backgroundColor: Colors.deepOrange[200],
    ),
  ));
}
