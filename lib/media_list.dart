import 'package:flutter/material.dart';
import 'package:movies_app/common/HttpHandler.dart';
import 'package:movies_app/media_list_item.dart';
import 'package:movies_app/model/Media.dart';

class MediaList extends StatefulWidget {
  MediaList({Key? key}) : super(key: key);

  @override
  State<MediaList> createState() => _MediaListState();
}

class _MediaListState extends State<MediaList> {
  List<Media> _media = new List.empty();

  @override
  void initState() {
    super.initState();
  }

  void loadMovies() async {
    var movies = await HttpHandler().fetchMovies();

    setState(() {
      _media.addAll(movies);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          itemCount: _media.length,
          itemBuilder: (BuildContext context, int index) {
            return new MediaListItem(media: this._media[index]);
            // return new Column(
            //   children: <Widget>[new MediaListItem(media: this._media[index])],
            // );
          }),
    );
  }
}
