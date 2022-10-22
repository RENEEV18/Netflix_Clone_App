import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_app/presentation/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        const Text(
          "Friends",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w900, color: kWhiteColor),
        ),
        kHeight,
        const Text(
          "This hits sitcom follows the merry misadventures of six 20-something pales as they navigate the pitfalls of work life,and love in 1990s Manhattan ",
          style: TextStyle(color: kGreyColor),
        ),
        kHeight50,
        const VideoWidget(),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
              icon: Icons.near_me_outlined,
              title: "Share",
              iconSize: 30,
              textSize: 14,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.add,
              title: "My List",
              iconSize: 30,
              textSize: 14,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.play_arrow,
              title: "Play",
              iconSize: 30,
              textSize: 14,
            ),
            kWidth,
          ],
        ),
      ],
    );
  }
}
