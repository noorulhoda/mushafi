import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SurahCard extends StatefulWidget {
  String title;
  int id;

  SurahCard({this.id = 0, this.title = ""});
  @override
  _SurahCardState createState() => _SurahCardState();
}

class _SurahCardState extends State<SurahCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text(widget.title)],
        ),
      ),
    );
  }
}
