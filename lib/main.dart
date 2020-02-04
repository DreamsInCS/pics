// Import a helper library from Flutter 
// to get content on the screen
import 'package:flutter/material.dart';

// Define a main() function to run when our app starts
void main() {
// Create a new text widget to show some text
// on the screen
var app = MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('Let\'s See Images!')
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(
        Icons.add,
        color: Colors.white,
        size: 30.0
      ),
      onPressed: () => print('Button was pressed.')
    )
  )
);

// Take that widget and get it on the screen
runApp(app);
}
