class FavoriteState {
  String? image;
  String? name;
  int? movieId;
  bool internetState;
  List movies;
  List movieKeys;
  FavoriteState(
      {this.image,
      this.name,
      this.movieId,
      this.internetState = false,
      this.movies = const [],
      this.movieKeys = const []});

  FavoriteState copyWidth(
      {String? getImage,
      String? geName,
      int? getMovieId,
      bool? getInternetState,
      List? getMovies,
      List? getMovieKeys}) {
    return FavoriteState(
      image: getImage ?? image,
      name: geName ?? name,
      movieId: getMovieId ?? movieId,
      internetState: getInternetState ?? internetState,
      movies: getMovies ?? movies,
      movieKeys: getMovieKeys ?? movieKeys,
    );
  }
}
