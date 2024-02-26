import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:movie_search/model/localeStorageService/sqflite_service.dart';
import 'package:movie_search/viewModel/states/favorite_state.dart';

abstract class CounterEvent {}

final class DeleteMovie extends CounterEvent {
  int index;
  DeleteMovie({
    required this.index,
  });
}

final class GetMovies extends CounterEvent {}

final class ChangeInternetConectionState extends CounterEvent {
  bool getInternetState;
  ChangeInternetConectionState({required this.getInternetState});
}

class FavoriteBloc extends Bloc<CounterEvent, FavoriteState> {
  FavoriteBloc() : super(FavoriteState()) {
    InternetConnection().onStatusChange.listen((InternetStatus status) {
      switch (status) {
        case InternetStatus.connected:
          add(ChangeInternetConectionState(getInternetState: true));
          add(GetMovies());
          break;
        case InternetStatus.disconnected:
          add(ChangeInternetConectionState(getInternetState: false));
          add(GetMovies());
          break;
      }
    });

    on<DeleteMovie>((event, emit) async {
      if (state.internetState) {
        FirebaseFirestore.instance
            .collection('movie_information')
            .doc(state.movieKeys[event.index])
            .delete();
        add(GetMovies());
      } else {
        await SqfliteService.database!.rawDelete(
          'DELETE FROM Test WHERE movie_id = ?',
          [state.movies[event.index]['movie_id']],
        );
        add(GetMovies());
      }
    });

    on<GetMovies>((event, emit) async {
      if (state.internetState) {
        List resultForlkeys = [];
        final dataFromBase = await FirebaseFirestore.instance
            .collection('movie_information')
            .get();
        for (var element in dataFromBase.docs) {
          resultForlkeys.add(element.id);
        }
        emit(state.copyWidth(
            getMovies: dataFromBase.docs, getMovieKeys: resultForlkeys));
      } else {
        List rows = await SqfliteService.database!.query('Test');
        emit(state.copyWidth(getMovies: rows));
      }
    });

    on<ChangeInternetConectionState>((event, emit) async {
      emit(state.copyWidth(getInternetState: event.getInternetState));
    });
  }
}
