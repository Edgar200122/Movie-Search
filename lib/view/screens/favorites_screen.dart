import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_search/main.dart';
import 'package:movie_search/view/components/app_text.dart';
import 'package:movie_search/viewModel/blocs/alert_dialog.dart';
import 'package:movie_search/viewModel/blocs/favorite_bloc.dart';
import 'package:movie_search/viewModel/states/favorite_state.dart';

class FavaoritesScreen extends StatelessWidget {
  const FavaoritesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    FavoriteBloc favoriteBloc = context.read<FavoriteBloc>();
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: GestureDetector(
          onTap: () {
            Navigator.pushAndRemoveUntil<void>(
              context,
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => const MultiProv()),
              ModalRoute.withName('/'),
            );
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: BlocBuilder<FavoriteBloc, FavoriteState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextWidget(
                        text: 'Избранные',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      TextWidget(
                        text: state.movies.length.toString(),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: ListView(
                    shrinkWrap: true,
                    children: List.generate(state.movies.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/image_movie_second.png',
                              width: 60,
                              height: 60,
                            ),
                            // state.movies[index]['movie_image'] == null
                            //     ? Image.asset(
                            //         'assets/images/image_movie_second.png')
                            //     : Image.network(
                            //         state.movies[index]['movie_image'],
                            //         width: 60,
                            //         height: 60,
                            //       ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: TextWidget(
                                  text: state.movies[index]['movie_name'],
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  showMyDialog(context, () {
                                    favoriteBloc.add(
                                      DeleteMovie(index: index),
                                    );
                                    Navigator.of(context).pop();
                                  }, 'Удалить');
                                },
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Image.asset(
                                    'assets/images/delete.png',
                                    width: 40,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    ));
  }
}
