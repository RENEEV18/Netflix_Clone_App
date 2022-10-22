import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_app/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "FEB",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kGreyColor),
              ),
              Text(
                "11",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(),
              Row(
                children: [
                  Text(
                    "TALLGIRL 2",
                    style: GoogleFonts.amaticSc(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      CustomButtonWidget(
                        icon: Icons.notifications,
                        title: "Remind me",
                        iconSize: 20,
                        textSize: 10,
                      ),
                      kWidth,
                      CustomButtonWidget(
                        icon: Icons.info,
                        title: "Info",
                        iconSize: 20,
                        textSize: 10,
                      ),
                      kWidth,
                    ],
                  ),
                ],
              ),
              kHeightTallGirl,
              const Text("Coming On Friday"),
              kHeight,
              const Text(
                "Tall Girl 2",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: kWhiteColor),
              ),
              kHeight,
              const Text(
                "Landing the lead in the school musical is a dream come true for Jodi , untill the pressure sends her confidence - and her relationship - into a tailspin ",
                style: TextStyle(color: kGreyColor),
              )
            ],
          ),
        ),
      ],
    );
  }
}
