import 'package:flutter/material.dart';
import 'package:movie_search/view/components/app_text.dart';

class MovieDescriptions extends StatelessWidget {
  const MovieDescriptions({
    super.key,
    required this.movieRating,
    required this.movieName,
  });
  final String movieRating;

  final String movieName;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      alignment: WrapAlignment.center,
      spacing: 8,
      children: [
        TextWidget(
          text: movieRating,
          color: Colors.green,
          textalign: TextAlign.center,
        ),
        TextWidget(
          text: movieName,
          color: Colors.white,
          textalign: TextAlign.center,
        ),
      ],
    );
  }
}
