import 'package:flutter/material.dart';
import 'package:mushafi/view/home.dart';
import 'package:mushafi/view/onboarding.dart';
import 'package:mushafi/view/surah/surahs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mushafi',
        theme: ThemeData.dark(),
        initialRoute: '/',
        routes: {
          '/': (context) => OnBoarding(),
          '/home': (context) => Home(),
          '/surahsScreen': (context) => SurahsScreen(),
        });
  }
}
