import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_search/view/components/actors_component.dart';
import 'package:movie_search/view/components/app_text.dart';
import 'package:movie_search/view/components/custom_row.dart';
import 'package:movie_search/view/components/movie_descriptions.dart';
import 'package:movie_search/view/components/thrillers_and_teasers.dart';
import 'package:movie_search/viewModel/blocs/search_bloc.dart';
import 'package:movie_search/viewModel/states/search_states.dart';

class InformationAbouttheMovie extends StatelessWidget {
  const InformationAbouttheMovie({
    Key? key,
    this.movieImage,
  }) : super(key: key);

  final String? movieImage;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
              return state.films != null
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        state.films![state.movieId!].backdrop?.url != null
                            ? Image.network(
                                state.films![state.movieId!].poster!.url!,
                                width: 300,
                              )
                            : Image.asset(
                                'assets/images/icon-kp.png',
                                width: 300,
                              ),
                        TextWidget(
                          text: state.films![state.movieId!].name!,
                          color: Colors.white,
                          fontSize: 25,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        MovieDescriptions(
                          movieRating: state.films![state.movieId!].rating!.imdb
                              .toString(),
                          movieName:
                              state.films![state.movieId!].names[0].name!,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextWidget(
                              text:
                                  state.films![state.movieId!].year.toString(),
                              color: Colors.grey,
                              textalign: TextAlign.center,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 1.5,
                              child: TextWidget(
                                text: state.geners ?? '',
                                color: Colors.grey,
                                textalign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const CustomRow(),
                        const SizedBox(height: 20),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: TextWidget(
                            text: 'Тизер',
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "'Когда мир Старка рушится на его глазах по вине неизвестных противников, Тони жаждет найти виновных и свести с ними счеты. Оказавшись в безвыходной ситуации, Старк может рассчитывать только на себя и свою изобретательность, чтобы защитить тех, кто ему дорог.'",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 20),
                        if (state.videos != null)
                          Thrillers(videos: state.videos!),
                        const SizedBox(height: 20),
                        ActorsComponent(searchState: state),
                      ],
                    )
                  : const SizedBox();
            }),
          ),
        ),
      ),
    );
  }
}
