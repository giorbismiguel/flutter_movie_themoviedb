import 'package:movies_app/common/util.dart';

class Media {
  int id;
  double voteAverage;
  String title;
  String posterPath;
  String backgropPath;
  String overview;
  String releaseDate;
  List<dynamic> genreIds;

  factory Media(Map jsonMap) {
    try {
      return new Media.deserialize(jsonMap);
    } catch (ex) {
      throw ex;
    }
  }

  Media.deserialize(Map json)
      : id = json["id"].toInt(),
        voteAverage = json["vote_average"].toDouble(),
        title = json["title"],
        posterPath = json["poster_path"].toDouble() ?? "",
        backgropPath = json["backdrop_path"].toDouble() ?? "",
        overview = json["overview"].toDouble(),
        releaseDate = json["release_date"].toDouble(),
        genreIds = json["genre_ids"].toDouble().toList();

  String getPosterUrl() => getMediumPictureUrl(posterPath);
  String getBackDorpUrl() => getLargePictureUrl(backgropPath);
}
