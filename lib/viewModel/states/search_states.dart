import 'package:flutter/material.dart';
import 'package:movie_search/model/data/movie_by_id_model.dart';
import 'package:movie_search/model/data/movie_search_model.dart';

class SearchState {
  static TextEditingController searchMovieContoller = TextEditingController();
  List<Doc>? films;
  int? movieId;
  Videos? videos;
  String? geners;
  List<Person>? persons;
  SearchState({
    this.films,
    this.movieId,
    this.geners,
    this.persons,
    this.videos,
  });

  SearchState copyWidth(
      {List<Doc>? getFilms,
      int? getMovieId,
      String? getGeners,
      List<Person>? getPersons,
      Videos? getVideos}) {
    return SearchState(
      films: getFilms ?? films,
      movieId: getMovieId ?? movieId,
      geners: getGeners ?? geners,
      persons: getPersons ?? persons,
      videos: getVideos ?? videos,
    );
  }
}
