import 'package:flutter/material.dart';
import 'package:netflix_clone_sample/core/colors.dart';
import 'package:netflix_clone_sample/core/constants.dart';
import 'package:netflix_clone_sample/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_clone_sample/presentation/widgets/video_widget.dart';

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
          height: 488,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                "FEB",
                style: TextStyle(
                  fontSize: 16,
                  color: kGreyColor,
                ),
              ),
              Text(
                "11",
                style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 4,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 480,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Peaky Blinders',
                    style: TextStyle(
                      letterSpacing: -2.5,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      CustomButtonWidget(
                        icon: Icons.notifications,
                        title: 'Remind me',
                        iconSize: 22,
                        textSize: 13,
                      ),
                      kWidth,
                      CustomButtonWidget(
                        icon: Icons.info,
                        title: 'Info',
                        iconSize: 22,
                        textSize: 13,
                      ),
                      kWidth
                    ],
                  ),
                ],
              ),
              kHeight,
              const Text(
                "Coming on Friday",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              kheight20,
              Row(
                children: [
                  Image.network(
                    'https://www.freepnglogos.com/uploads/netflix-logo-app-png-16.png',
                    width: 20,
                    height: 20,
                  ),
                  const Text("FILM"),
                  const Spacer(),
                  kWidth,
                ],
              ),
              kHeight,
              const Text(
                'Peaky Blinders',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              kHeight,
              const Text(
                "Tommy Shelby, a dangerous man, leads the Peaky Blinders, a gang based in Birmingham. Soon, Chester Campbell, an inspector, decides to nab him and put an end to the criminal activities.",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }
}

