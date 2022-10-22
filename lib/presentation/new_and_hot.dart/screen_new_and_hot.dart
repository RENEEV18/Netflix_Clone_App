import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/new_and_hot.dart/widgets/everyones_watching_widget.dart';

import 'widgets/coming_soon_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: const Text(
              "New & Hot",
              style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
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
            ],
            bottom: TabBar(
                isScrollable: true,
                labelColor: kBlackColor,
                labelStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                unselectedLabelColor: kWhiteColor,
                indicator: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: kRadius30,
                ),
                tabs: const [
                  SizedBox(
                      height: 40,
                      child: Center(
                          child: Text(
                        "🍿 Coming Soon",
                      ))),
                  SizedBox(
                    height: 40,
                    child: Center(
                      child: Text("👀 Everyone's Watching"),
                    ),
                  ),
                ]),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: TabBarView(children: [
            _buildComingSoon(),
            _buildEveryonesWatching(),
          ]),
        ),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const ComingSoonWidget(),
    );
  }

  Widget _buildEveryonesWatching() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const EveryonesWatchingWidget(),
    );
  }
}
