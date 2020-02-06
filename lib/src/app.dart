// Import Flutter helper library
import 'package:flutter/material.dart';

// Import HTTP requests
import 'package:http/http.dart' show get;

// Import JSON processing
import 'dart:convert';

// Import custom widgets
import 'widgets/image_list.dart';

// Import JSON models
import 'models/image_model.dart';

// Create a class that will be our custom widget
class App extends StatefulWidget{
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  // Make HTTP request.
  void fetchImage() async {
    setState(() => counter++);

    final response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    final imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() => images.add(imageModel));
  }

  // Must define build() method that returns the widgets
  // that the app widget will show
  Widget build(context) {
    return MaterialApp(
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
          onPressed: fetchImage,    // NOT fetchImage()! We do NOT want fetchImage to be instantly called!!!
        ),
        body: ImageList(images)
      )
    );
  }
}