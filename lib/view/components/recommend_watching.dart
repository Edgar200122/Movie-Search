import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_search/view/components/app_text.dart';

class RecommendWatching extends StatelessWidget {
  const RecommendWatching({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            TextWidget(
              text: 'Избранные фильмы',
              fontSize: 25,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
            Spacer(),
            TextWidget(
              text: 'Все',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.orange,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: 200,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          items: [
            Image.asset('assets/images/image_movie_first.png'),
            Image.asset('assets/images/image_movie_second.png'),
            Image.asset('assets/images/movie_image_three.png'),
          ],
        ),
      ],
    );
  }
}
