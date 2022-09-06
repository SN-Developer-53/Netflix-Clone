import 'package:flutter/material.dart';
import 'package:netflix_clone_sample/core/colors.dart';
import 'package:netflix_clone_sample/core/constants.dart';
import 'package:netflix_clone_sample/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_clone_sample/presentation/new_and_hot/widgets/coming_soon_widgets.dart';
import 'package:netflix_clone_sample/presentation/new_and_hot/widgets/everyones_watching_widget.dart';
import 'package:netflix_clone_sample/presentation/widgets/app_bar_widget.dart';
import 'package:netflix_clone_sample/presentation/widgets/video_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

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
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  color: kWhiteColor,
                  size: 30,
                ),
                kWidth,
                Container(
                  width: 25,
                  height: 25,
                  color: Colors.blue,
                ),
                kWidth,
              ],
              bottom: TabBar(
                unselectedLabelColor: kWhiteColor,
                labelColor: kBlackColor,
                isScrollable: true,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                indicator:
                    BoxDecoration(color: kWhiteColor, borderRadius: kRadius30),
                tabs: const [
                  Tab(text: "🍿Coming Soon"),
                  Tab(
                    text: "👀Everyone's Watching",
                  )
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              _buildComingSoon(),
              _buildEveryonesWatchingWidget(),
            ],
          )),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index) => const ComingSoonWidget(),
    );
  }

  Widget _buildEveryonesWatchingWidget() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index) =>
          const EveryonesWatchingWidget(),
    );
  }
}
