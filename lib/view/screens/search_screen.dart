import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_search/view/components/result_list.dart';
import 'package:movie_search/view/screens/favorites_screen.dart';
import 'package:movie_search/viewModel/blocs/bloc_constants.dart';
import 'package:movie_search/viewModel/blocs/search_bloc.dart';
import 'package:movie_search/viewModel/states/search_states.dart';

class SaerchScreen extends StatelessWidget {
  const SaerchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocConstants.searchBloc = context.read<SearchBloc>();
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 13),
                child: BlocBuilder<SearchBloc, SearchState>(
                    builder: (context, state) {
                  return state.films != null
                      ? ResultList(
                          searchState: state,
                        )
                      : const SizedBox();
                }),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: TextField(
                  onChanged: (text) {
                    BlocConstants.searchBloc!.add(
                      SearchMovie(
                        userTypeText: text,
                      ),
                    );
                  },
                  cursorColor: const Color(0xff959595),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  controller: SearchState.searchMovieContoller,
                  decoration: const InputDecoration(
                    filled: true,
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Color(0xff959595),
                    fillColor: Color(0xff333333),
                    contentPadding: EdgeInsets.symmetric(vertical: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xff333333),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xff333333),
                      ),
                    ),
                    hintText: 'поиск фильмов ',
                    hintStyle: TextStyle(
                      color: Color(0xff959595),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FavaoritesScreen()),
            );
          },
          backgroundColor: Colors.grey,
          child: const Icon(
            Icons.favorite,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
