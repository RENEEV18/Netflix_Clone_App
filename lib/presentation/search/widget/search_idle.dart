
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/search/widget/title.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Top Searches',),
        kHeight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx, index) => const TopSearchItemTile(),
              separatorBuilder: (ctx, index) => kHeight20,
              itemCount: 10),
        ),
      ],
    );
  }
}



class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 70,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://imgs.search.brave.com/COdRYrHm7wyE8H6vtqOEKvtVjWgD2cRW9hLTUvrEdKs/rs:fit:759:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC4z/NEg2Z1B4UU4wX2Zu/a2dfeFZ1X0lnSGFF/byZwaWQ9QXBp'),
            ),
          ),
        ),
        kWidth,
        const Expanded(
          child: Text(
      'Movie Name',
      style: TextStyle(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
    ),
        ),
       const CircleAvatar(
              radius: 22,
              backgroundColor: kWhiteColor,
              child: CircleAvatar(
                backgroundColor: kBlackColor,
                radius: 20,
                child: Icon(Icons.play_arrow,color: Colors.white,),
              ),
            )
      ],
    );
  }
}


