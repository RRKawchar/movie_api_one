class Movie {
  String title;
  String imdbid;
  String poster;
  String yera;

  Movie({
    required this.title,
    required this.imdbid,
    required this.poster,
    required this.yera,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['Title'],
      imdbid: json['imdbID'],
      poster: json['Poster'],
      yera: json['Year'],
    );
  }
}
