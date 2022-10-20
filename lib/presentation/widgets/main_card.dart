import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';

class MainCardHome extends StatelessWidget {
  const MainCardHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: 150,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: kRadius10,
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://cdn.shopify.com/s/files/1/0747/3829/products/mHP0043_1024x1024.jpeg?v=1571444279'),
          ),
        ),
      ),
    );
  }
}