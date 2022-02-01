import 'package:flutter/material.dart';
import 'package:mushafi/controller/ayah.controller.dart';
import 'package:mushafi/controller/surah.controller.dart';
import 'package:mushafi/model/ayah.model.dart';
import 'package:mushafi/model/surah.model.dart';
import 'package:mushafi/view/surah/surah_card.dart';
import 'package:mushafi/view/surah/surah_details.dart';
import 'package:mushafi/view/ayah/ayahs_screen.dart';

class SurahsScreen extends StatefulWidget {
  @override
  _SurahsScreenState createState() => _SurahsScreenState();
}

class _SurahsScreenState extends State<SurahsScreen> {
  bool isLoading = true;
  List<Surah> Surahs = [];
  List<Ayah> Ayahs = [];
  String texts = '';

  getSurahs() async {
    Surahs = await SurahService().getSurahs();
    isLoading = false;
    setState(() {});
  }

  getAyahs(int id) async {
    Ayahs = await AyahService().getAyahs(id);
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getSurahs();
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
              itemCount: Surahs.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    getAyahs(Surahs[index].number);
                    List<String> texts = [];
                    Ayahs.forEach((element) {
                      texts.add(element.text);
                      texts.add('(' + element.numberInSurah.toString() + ')');
                    });

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            /* SurahDetails(
                              id: Surahs[index].number,
                              title: Surahs[index].name,
                              ayahs: texts.join()),
                        ) */
                            AyahsScreen(mySurahId: Surahs[index].number),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SurahCard(
                      title: Surahs[index].name,
                      id: Surahs[index].number,
                    ),
                  ),
                );
              },
            ),
    );
  }
}
