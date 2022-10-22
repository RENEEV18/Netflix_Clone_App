import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

class VideoListItems extends StatelessWidget {
  const VideoListItems({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //left side
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black.withOpacity(0.5),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.volume_off,
                        color: kWhiteColor,
                        size: 30,
                      )),
                ),

                //right side

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://www.cinematerial.com/media/box-office/15474916.jpg'),
                      ),
                    ),
                    VedioActionsWidget(
                        icon: Icons.emoji_emotions, title: 'LOL'),
                    VedioActionsWidget(icon: Icons.add, title: 'My List'),
                    VedioActionsWidget(
                        icon: Icons.near_me_outlined, title: 'Share'),
                    VedioActionsWidget(icon: Icons.play_arrow, title: 'Play'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VedioActionsWidget extends StatelessWidget {
  const VedioActionsWidget(
      {super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 16, color: kWhiteColor),
          ),
        ],
      ),
    );
  }
}
