import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/widgets/app_bar.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetList = [
    const _SmartDownloads(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Downloads',
          ),
        ),
        body: ListView.separated(
            padding: const EdgeInsets.all(10),
            itemBuilder: (ctx, index) => _widgetList[index],
            separatorBuilder: (ctx, index) => const SizedBox(
                  height: 25,
                ),
            itemCount: _widgetList.length));
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final List imageLst = [
    'https://www.cinematerial.com/media/box-office/14668630.jpg',
    'https://cdn.cinematerial.com/p/136x/txa2uq1j/terror-train-canadian-video-on-demand-movie-cover-sm.jpg?v=1665829181',
    'https://www.cinematerial.com/media/box-office/15474916.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kWhiteColor, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kHeight,
        const Text(
          "We will download a personalised selection of\n movies and shows for you, so there's\n always something to watch on your\n device",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
        kHeight,
        SizedBox(
          // width: size.width * 0.45,
          height: size.height * 0.45,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.4,
                backgroundColor: Colors.grey.withOpacity(0.5),
              ),
              DownloadsImageWidget(
                imageLst: imageLst[0],
                margin: const EdgeInsets.only(left: 170,top: 40),
                angle: 25,
                size: Size(size.width * 0.35, size.width * 0.55),
              ),
              DownloadsImageWidget(
                imageLst: imageLst[1],
                margin: const EdgeInsets.only(right: 170,top: 40),
                angle: -20,
                size: Size(size.width * 0.35, size.width * 0.55),
                radius: 30,
              ),
              DownloadsImageWidget(
                imageLst: imageLst[2],
                margin: const EdgeInsets.only(bottom: 30,top: 40),
                size: Size(size.width * 0.4, size.width * 0.6),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            onPressed: () {},
            color: kButtonColorBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set up',
                style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        MaterialButton(
          onPressed: () {},
          color: kButtonColorWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                  color: kBlackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kWidth,
        Icon(
          Icons.settings,
          color: kWhiteColor,
        ),
        kWidth,
        Text('Smart Downloads'),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.imageLst,
    this.angle = 0,
    required this.margin,
    required this.size,
    this.radius = 10,
  }) : super(key: key);

  final String imageLst;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Container(
           
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  imageLst,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}