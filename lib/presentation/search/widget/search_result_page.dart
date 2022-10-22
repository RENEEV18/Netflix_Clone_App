import 'package:flutter/cupertino.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/search/widget/title.dart';

const imageUrl =
    'https://cdn.cinematerial.com/p/136x/txa2uq1j/terror-train-canadian-video-on-demand-movie-cover-sm.jpg?v=1665829181';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Movies & TV'),
        kHeight,
        Expanded(
          child: GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 1 / 1.4,
              children: List.generate(20, (index) {
                return const MainCard();
              })),
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          image: const DecorationImage(
              image: NetworkImage(imageUrl), fit: BoxFit.cover)),
    );
  }
}
