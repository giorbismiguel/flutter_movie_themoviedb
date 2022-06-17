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
          new Container(
            child: new Stack(
              children: <Widget>[
                new FadeInImage.assetNetwork(
                  placeholder: "assets/placeholder.jpg",
                  image: media.getBackDorpUrl(),
                  fit: BoxFit.cover,
                  height: 200.0,
                  width: double.infinity,
                  fadeInDuration: new Duration(milliseconds: 40),
                ),

                new Positioned(
                  left: 0.0,
                  bottom: 0.0,
                  right: 0.0,
                  child: new Container(
                    width: double.infinity,
                    height: 40.0,
                    decoration: new BoxDecoration(
                      color: Colors.grey[900]!.withOpacity(0.5),
                    ),
                    constraints: new BoxConstraints.expand(
                      height: 55.0,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
