import 'package:flutter/material.dart';
import 'package:netflix_clone_sample/core/colors.dart';
import 'package:netflix_clone_sample/core/constants.dart';
import 'package:netflix_clone_sample/presentation/home/widgets/custom_button_widget.dart';

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
          'Pablo Escobar: The Drug Lord (2012)',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        kHeight,
        const Text(
          "Pablo is a man with a natural ability for business. Early in his life, Pablo is introduced to the business of cocaine and the power it yields. A young life of crime lands Pablo in and out of jail as he builds is criminal empire. Pablo expands his power through politics but it is not long before his conflicts as a Congressman and a drug lord collide. Pablo has his enemies executed, but not before the United States activates its own war on the Medellin cartel.",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        kheight50,
        Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Image.network(
                'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/wN0HIzrVJle9v4bLug0wuinCMhP.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.black.withOpacity(0.5),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_off,
                    color: kWhiteColor,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
              icon: Icons.share,
              title: 'Share',
              iconSize: 22,
              textSize: 13,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.add,
              title: 'MyList',
              iconSize: 22,
              textSize: 13,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.play_arrow,
              title: 'Play',
              iconSize: 22,
              textSize: 13,
            ),
            kWidth
          ],
        )
      ],
    );
  }
}
