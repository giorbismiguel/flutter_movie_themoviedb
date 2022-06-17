import 'package:flutter/material.dart';
import 'package:movies_app/model/Media.dart';

class MediaListItem extends StatelessWidget {
  final Media media;

  const MediaListItem({Key? key, required this.media}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Column(
        children: <Widget>[
          new FadeInImage.assetNetwork(
            placeholder: "assets/placeholder.jpg",
            image: media.getBackDorpUrl(),
            fit: BoxFit.cover,
            height: 200.0,
            width: double.infinity,
            fadeInDuration: new Duration(milliseconds: 40),
          )
        ],
      ),
    );
  }
}
