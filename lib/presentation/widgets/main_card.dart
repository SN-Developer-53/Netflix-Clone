import 'package:flutter/material.dart';
import 'package:netflix_clone_sample/core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 130,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kRadius10,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/lKDIhc9FQibDiBQ57n3ELfZCyZg.jpg',
          ),
        ),
      ),
    );
  }
}
