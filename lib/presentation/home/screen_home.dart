import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/background_card.dart';
import 'package:netflix_app/presentation/home/widgets/number_title_card.dart';
import 'package:netflix_app/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (context, value, child) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: const [
                    BackgroundCard(),
                    kHeight,
                    MainTitleCard(
                      title: 'Released in the past year',
                    ),
                    kHeight,
                    MainTitleCard(
                      title: 'Trending Now',
                    ),
                    kHeight,
                    NumberTitleCard(),
                    kHeight,
                    MainTitleCard(
                      title: 'Tense Dramas',
                    ),
                    kHeight,
                    MainTitleCard(
                      title: 'South Indian Cinema',
                    ),
                    kHeight,
                  ],
                ),
              ),
              scrollNotifier.value == true
                  ? AnimatedContainer(
                      duration: const Duration(milliseconds: 2000),
                      width: double.infinity,
                      height: 90,
                      color: Colors.black.withOpacity(0.5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    'https://cdn.vox-cdn.com/thumbor/KNlt4WzgRBrvNHS3ULQu595AL5s=/0x0:3840x2560/1200x800/filters:focal(1613x973:2227x1587)/cdn.vox-cdn.com/uploads/chorus_image/image/66267583/netflix_n_icon_logo_3840.0.jpg'),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.cast,
                                color: kWhiteColor,
                                size: 30,
                              ),
                              kWidth,
                              Container(
                                height: 30,
                                width: 30,
                                color: Colors.blue,
                              ),
                              kWidth,
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text('TV Shows', style: kHomeTitleText),
                              Text('Movies', style: kHomeTitleText),
                              Text('Categories', style: kHomeTitleText),
                            ],
                          ),
                        ],
                      ),
                    )
                  : kHeight,
            ],
          ),
        );
      },
    )));
  }
}
