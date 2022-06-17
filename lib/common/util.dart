final String _imageUrlMedium = 'https://image.tmdb.org/t/p/w300';

final String _imageUrlLarge = 'https://image.tmdb.org/t/p/w500';

String getMediumPictureUrl(String path) => _imageUrlMedium + path;

String getLargePictureUrl(String path) => _imageUrlLarge + path;

Map<int, String> _genderMap = {
  28: 'Action',
  12: 'Adventure',
  16: 'Animation',
  35: 'Comedy',
  80: 'Crime',
  99: 'Documentary',
  18: 'Drama',
  10751: 'Family',
  14: 'Fantasy',
  36: 'History',
  27: 'Horror',
  10402: 'Music',
  9648: 'Mystery',
  878: 'Romance',
  10749: 'Science Fiction',
  53: 'Thriller',
  10752: 'War',
  37: 'Western',
};

List<String> getGenresToList(List<dynamic> genreIds) {
  List<String> genreList = [];
  genreIds.map((id) => _genderMap[id]).toList();
  return genreList;
}

String getGenreValues(List<dynamic> genreIds) {
  StringBuffer buffer = new StringBuffer();
  buffer.writeAll(getGenresToList(genreIds), " ,");
  
  return buffer.toString();
}
