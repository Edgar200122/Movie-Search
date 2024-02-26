import 'package:flutter/material.dart';

import 'package:movie_search/view/components/app_text.dart';
import 'package:movie_search/viewModel/states/search_states.dart';

class ActorsComponent extends StatelessWidget {
  const ActorsComponent({super.key, required this.searchState});
  final SearchState searchState;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const TextWidget(
              text: 'Актёры',
              fontSize: 25,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
            const Spacer(),
            TextWidget(
              text: searchState.persons!.length.toString(),
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.orange,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              children: List.generate(
                searchState.persons!.length,
                (index) => Container(
                  margin: const EdgeInsets.all(5),
                  width: 120,
                  child: Row(
                    children: [
                      Image.network(
                        searchState.persons![index].photo!,
                        height: 50,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      if (searchState.persons![index].name != null)
                        SizedBox(
                          width: 70,
                          child: TextWidget(
                            text: searchState.persons![index].name!,
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
