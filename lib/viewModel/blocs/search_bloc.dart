import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:movie_search/model/api/api_request.dart';
import 'package:movie_search/model/data/movie_by_id_model.dart';
import 'package:movie_search/model/data/movie_search_model.dart';
import 'package:movie_search/model/localeStorageService/sqflite_service.dart';
import 'package:movie_search/view/screens/information_movie.dart';
import 'package:movie_search/viewModel/states/search_states.dart';

abstract class CounterEvent {}

final class SearchMovie extends CounterEvent {
  String userTypeText;
  SearchMovie({required this.userTypeText});
}

final class ChangeFilmId extends CounterEvent {
  int movieId;
  int movieIdForRequest;
  BuildContext context;
  ChangeFilmId(
      {required this.movieId,
      required this.movieIdForRequest,
      required this.context});
}

final class GetMovieGenres extends CounterEvent {
  List geners;
  GetMovieGenres({
    required this.geners,
  });
}

final class SaveMovieInFirbase extends CounterEvent {}

final class SaveMovieInLocale extends CounterEvent {}

class SearchBloc extends Bloc<CounterEvent, SearchState> {
  SearchBloc() : super(SearchState()) {
    on<SearchMovie>((event, emit) async {
      Future.delayed(const Duration(milliseconds: 300));
      if (event.userTypeText.length > 3) {
        MovieSearchModel? movieSearchModel =
            await ApiRequest.searchMovieByName(event.userTypeText);

        if (movieSearchModel != null) {
          emit(state.copyWidth(
            getFilms: movieSearchModel.docs,
          ));
        }
      } else {
        emit(state.copyWidth(
          getFilms: [],
        ));
      }
    });
    on<ChangeFilmId>((event, emit) async {
      MovieByIdModel? movieByIdModel =
          await ApiRequest.searchMovieById(event.movieIdForRequest);
      emit(state.copyWidth(
        getMovieId: event.movieId,
        getPersons: movieByIdModel?.persons,
        getVideos: movieByIdModel?.videos,
      ));
      // ignore: use_build_context_synchronously
      Navigator.of(event.context).push(
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const InformationAbouttheMovie(),
        ),
      );
    });
    on<GetMovieGenres>((event, emit) async {
      String genersFilterResult = '';
      for (int i = 0; i < event.geners.length; i++) {
        genersFilterResult =
            '$genersFilterResult, ${(event.geners[i] as Country).name}';
      }
      emit(state.copyWidth(
        getGeners: genersFilterResult,
      ));
    });

    on<SaveMovieInFirbase>((event, emit) async {
      bool internetState = await InternetConnection().hasInternetAccess;
      if (internetState) {
        FirebaseFirestore.instance.collection('movie_information').add({
          'movie_name': state.films![state.movieId!].name,
          'movie_image': state.films![state.movieId!].poster!.url!,
          'movie_id': state.films![state.movieId!].id
        });
      } else {
        add(SaveMovieInLocale());
      }
    });

    on<SaveMovieInLocale>((event, emit) async {
      if (SqfliteService.database != null) {
        List<Map> date = await SqfliteService.getData(
            0, state.films![state.movieId!].id ?? 0, '', '');
        if (date.isEmpty) {
          SqfliteService.database!.rawQuery(
              'INSERT INTO Test(movie_id, movie_image, movie_name) VALUES("${state.films![state.movieId!].id}", "${state.films![state.movieId!].poster!.url!}", "${state.films![state.movieId!].name}")');
        }
      }
    });
  }
}
