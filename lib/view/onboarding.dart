import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:mushafi/view/surah/surahs_screen.dart';

class OnBoarding extends StatelessWidget {
  final _pages = [
    PageModel(
        color: const Color(0xff04364f),
        imageAssetPath: 'assets/heart.png',
        title: " نعلم حبك للقرآن و نعلم انشغالك عنه",
        body: "",
        doAnimateImage: true),
    PageModel(
        color: const Color(0xff04364f),
        imageAssetPath: 'assets/my_logo1.png',
        body: "",
        title: "لذا صنعنا لك هذا التطبيق",
        doAnimateImage: true),
    PageModel(
        color: const Color(0xff664d7b),
        imageAssetPath: 'assets/quranRail.png',
        title: " لتقرأ كلام ربك",
        body: "",
        doAnimateImage: true),
    PageModel(
        color: const Color(0xff04364f),
        imageAssetPath: 'assets/headphone.png',
        title: "ولتستمع له ... دائما ",
        body: "",
        doAnimateImage: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OverBoard(
        pages: _pages,
        showBullets: true,
        nextText: "التالي",
        finishText: "لنبدأ",
        skipText: "تخطي",
        skipCallback: () {
          Navigator.pushNamed(context, '/surahsScreen');
        },
        finishCallback: () {
          Navigator.pushNamed(context, '/surahsScreen');
        },
      ),
    );
  }
}
