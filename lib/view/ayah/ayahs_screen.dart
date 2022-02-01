import 'package:flutter/material.dart';
import 'package:mushafi/controller/ayah.controller.dart';
import 'package:mushafi/model/ayah.model.dart';
import 'package:mushafi/model/ayah.model.dart';
import 'package:mushafi/view/ayah/ayah_card.dart';
import 'package:mushafi/view/ayah/ayah_audio.dart';

class AyahsScreen extends StatefulWidget {
  @override
  int mySurahId;
  _AyahsScreenState createState() => _AyahsScreenState();
  AyahsScreen({this.mySurahId = 0});
}

class _AyahsScreenState extends State<AyahsScreen> {
  bool isLoading = true;
  List<Ayah> Ayahs = [];
  //get it from above how??/////////

  getAyahs(int surahId) async {
    Ayahs = await AyahService().getAyahs(surahId);
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getAyahs(widget.mySurahId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("اقرأ ورتل وارقَ ",
            style: TextStyle(color: Colors.deepOrangeAccent)),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: Ayahs.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AyahCard(
                      text: Ayahs[index].text,
                      numberInSurah: Ayahs[index].numberInSurah,
                      number: Ayahs[index].number,
                      englishText: Ayahs[index].englishText,
                    ),
                  ),
                );
              },
            ),
    );
  }
}
