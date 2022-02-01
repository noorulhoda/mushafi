import 'package:flutter/material.dart';

class SurahDetails extends StatefulWidget {
  String title;
  int id;
  String ayahs;
  SurahDetails({this.title = "", this.id = 0, this.ayahs = ""});
  @override
  _SurahDetailsState createState() => _SurahDetailsState();
}

class _SurahDetailsState extends State<SurahDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.title,
                textAlign: TextAlign.center,
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.ayahs,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
