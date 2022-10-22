import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 150,
            ),
            Container(
              width: 130,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: kRadius10,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://imgs.search.brave.com/J3NnJAdMg5mX_325p-ALcnAD3k4YM_8i4kbzoJnrIyE/rs:fit:320:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC40/UndyNGpneUJwN2Nh/ZlRxNXZOcVR3SGFL/LSZwaWQ9QXBp'),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: -30,
          left: 13,
          child: BorderedText(
            strokeWidth: 3,
            strokeColor: kWhiteColor,
            child: Text(
              '${index + 1}',
              style: const TextStyle(
                  color: kBlackColor,
                  fontSize: 140,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  decorationColor: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
