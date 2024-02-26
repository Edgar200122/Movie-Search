import 'package:flutter/material.dart';
import 'package:movie_search/view/components/app_text.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const TextWidget(
          text: 'Категории',
          fontSize: 25,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
        const SizedBox(height: 10),
        Wrap(
          runSpacing: 10,
          spacing: 10,
          children: [
            buildCategoryContainer('Фильмы'),
            buildCategoryContainer('Онлайн-кинотеатр'),
            buildCategoryContainer('Жанры'),
            buildCategoryContainer('Страны'),
            buildCategoryContainer('Годы'),
            buildCategoryContainer('Критика'),
            buildCategoryContainer('Сериалы'),
            const SizedBox(width: 30),
            buildCategoryContainer('Сборы'),
            buildCategoryContainer('Премии'),
          ],
        )
      ],
    );
  }

  Widget buildCategoryContainer(String categoryName) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff262626),
        borderRadius: BorderRadius.circular(30),
      ),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Container(
          height: 40,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextWidget(
            text: categoryName,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
