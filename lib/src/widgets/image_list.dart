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
      itemBuilder: (context, int index) => buildImage(images[index])
    );
  }

  // Name is not particularly special, made up!
  // Helps make Widget build() less massive!
  buildImage(ImageModel image) {
    return Container(
        margin: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0, bottom: 10.0),            // "all" sides of the Container element
        child: new Column(
          children: <Widget>[                    // <Widget> not required, but nice for annotation
            Padding(
              child: Image.network(image.url),
              padding: EdgeInsets.only(bottom: 10.0)
            ), 
            Text(image.title)
          ]
        ),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.redAccent)
        )
      );
  }
}