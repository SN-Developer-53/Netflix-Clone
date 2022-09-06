import 'package:flutter/material.dart';
import 'package:netflix_clone_sample/presentation/downloads/screen_downloads.dart';
import 'package:netflix_clone_sample/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix_clone_sample/presentation/home/screen_home.dart';
import 'package:netflix_clone_sample/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix_clone_sample/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix_clone_sample/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({Key? key}) : super(key: key);

  final _pages = [
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, child) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
