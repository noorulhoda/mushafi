import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

// ignore: must_be_immutable
class AyahCard extends StatefulWidget {
  String text;
  int numberInSurah;
  int number;
  String englishText;
  play(url) async {
    AudioPlayer audioPlayer = new AudioPlayer();
    int result = await audioPlayer.play(url);
    if (result == 1) {
      // success
      print(url);
      audioPlayer.play(url);
    }
  }

  AyahCard(
      {this.numberInSurah = 0,
      this.text = "",
      this.number = 0,
      this.englishText = ""});
  @override
  _AyahCardState createState() => _AyahCardState();
}

class _AyahCardState extends State<AyahCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.text +
                  '(' +
                  widget.numberInSurah.toString() +
                  ')\n ------------------',
              textAlign: TextAlign.center,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.play_arrow,
                        color: Colors.greenAccent,
                        size: 30.0,
                      ),
                      onPressed: () {
                        widget.play(
                            'https://cdn.islamic.network/quran/audio/128/ar.alafasy/${widget.number}.mp3');
                      }),
                  Text("استماع"),
                  IconButton(
                      icon: Icon(
                        Icons.book,
                        color: Colors.blueAccent,
                        size: 30.0,
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => new AlertDialog(
                                  title: new Text('Ayah Translation'),
                                  content: Text(
                                    widget.englishText,
                                    textAlign: TextAlign.center,
                                  ),
                                  actions: <Widget>[
                                    new IconButton(
                                        icon: new Icon(Icons.close),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        })
                                  ],
                                ));
                      }),
                  Text("ترجمة"),
                ])
          ],
        ),
      ),
    );
  }
}
