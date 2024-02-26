import 'package:flutter/material.dart';
import 'package:movie_search/view/components/app_text.dart';
import 'package:movie_search/viewModel/blocs/alert_dialog.dart';
import 'package:movie_search/viewModel/blocs/bloc_constants.dart';
import 'package:movie_search/viewModel/blocs/search_bloc.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Column(
          children: [
            Icon(
              Icons.star_border,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            TextWidget(
              text: 'Оценить',
              color: Colors.grey,
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            showMyDialog(context, () {
              BlocConstants.searchBloc!.add(SaveMovieInFirbase());
              Navigator.of(context).pop();
            });
          },
          child: const Column(
            children: [
              Icon(
                Icons.save_rounded,
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              TextWidget(
                text: 'Виду смотреть',
                color: Colors.grey,
              ),
            ],
          ),
        ),
        const Column(
          children: [
            Icon(
              Icons.share,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            TextWidget(
              text: 'Поделится',
              color: Colors.grey,
            ),
          ],
        ),
      ],
    );
  }
}
