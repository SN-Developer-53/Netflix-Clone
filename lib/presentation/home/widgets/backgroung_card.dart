import 'package:flutter/material.dart';
import 'package:netflix_clone_sample/core/colors.dart';
import 'package:netflix_clone_sample/core/constants.dart';
import 'package:netflix_clone_sample/presentation/home/widgets/custom_button_widget.dart';

class BackgroungCard extends StatelessWidget {
  const BackgroungCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(kMainImage),
            ),
          ),
        ),
        kheight20,
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomButtonWidget(
                  icon: Icons.add,
                  title: 'My List',
                ),
                _PlayButtton(),
                CustomButtonWidget(
                  icon: Icons.info,
                  title: 'info',
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  TextButton _PlayButtton() {
    return TextButton.icon(
      onPressed: () {},
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(kWhiteColor)),
      icon: const Icon(
        Icons.play_arrow,
        size: 25,
        color: kBlackColor,
      ),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'Play',
          style: TextStyle(
            fontSize: 20,
            color: kBlackColor,
          ),
        ),
      ),
    );
  }
}
