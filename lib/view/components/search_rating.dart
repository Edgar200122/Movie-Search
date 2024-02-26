import 'package:flutter/material.dart';
import 'package:movie_search/view/components/app_text.dart';

class SearchRating extends StatelessWidget {
  const SearchRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextWidget(
          text: 'Рейтинг Кинопоиска',
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w800,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 180,
          width: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: Colors.grey[900], borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              const TextWidget(
                text: '7.5',
                fontSize: 50,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
              const TextWidget(
                text: '465 491 оценка ',
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  color: const Color(0xffFE5500),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const TextWidget(
                  text: 'Оценить',
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
