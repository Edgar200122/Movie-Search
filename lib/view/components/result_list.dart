import 'package:flutter/material.dart';
import 'package:movie_search/view/components/app_text.dart';
import 'package:movie_search/viewModel/blocs/bloc_constants.dart';
import 'package:movie_search/viewModel/blocs/search_bloc.dart';
import 'package:movie_search/viewModel/states/search_states.dart';

class ResultList extends StatelessWidget {
  const ResultList({
    super.key,
    required this.searchState,
  });
  final SearchState searchState;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView.builder(
        shrinkWrap: false,
        itemCount: searchState.films!.length,
        itemBuilder: (context, index) {
          return searchState.films![index].description!.isNotEmpty
              ? GestureDetector(
                  onTap: () {
                    if (searchState.films![index].id != null) {
                      BlocConstants.searchBloc!.add(
                        ChangeFilmId(
                          movieId: index,
                          movieIdForRequest: searchState.films![index].id!,
                          context: context,
                        ),
                      );
                      BlocConstants.searchBloc!.add(
                        GetMovieGenres(
                            geners: searchState.films![index].genres),
                      );
                    }
                  },
                  child: ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        searchState.films![index].backdrop?.url != null
                            ? Image.network(
                                searchState.films![index].poster!.url!,
                                width: 50,
                              )
                            : Image.asset(
                                'assets/images/icon-kp.png',
                                width: 50,
                              ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: TextWidget(
                                text: searchState.films![index].name!,
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width / 2.1,
                                child: TextWidget(
                                  text: searchState.films![index].description!,
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        TextWidget(
                          text:
                              searchState.films![index].rating!.imdb.toString(),
                          color: Colors.green,
                          fontSize: 18,
                        ),
                      ],
                    ),
                  ),
                )
              : const SizedBox();
        },
      ),
    );
  }
}
