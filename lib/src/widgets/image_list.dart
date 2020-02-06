import 'package:flutter/material.dart';
import '../models/image_model.dart';

// In stateless widgets, instance variables should be FINAL.
// They should NOT be able to change whatsoever.
// They are remade and assigned new values upon rerendering, but the instance variables are never reassigned.
class ImageList extends StatelessWidget {
  final List<ImageModel> images;
  
  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) => Container(
        margin: EdgeInsets.all(20.0),            // "all" sides of the Container element
        child: Image.network(images[index].url),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.redAccent)
        )
      )
    );
  }
}