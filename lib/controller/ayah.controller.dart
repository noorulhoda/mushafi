import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:mushafi/model/ayah.model.dart';
import 'package:mushafi/model/surah.model.dart';

class AyahService {
  String baseUrl = "https://api.alquran.cloud/v1";

  Future<List<Ayah>> getAyahs(int id) async {
    List<Ayah> list = [];
    Response response;
    response =
        await Dio().get('$baseUrl/surah/$id/editions/ar.alafasy,en.asad');
    var data = response.data['data'][0]['ayahs'];

    for (int i = 0; i < response.data['data'][0]['numberOfAyahs']; i++) {
      Ayah a = new Ayah();
      a.englishText = response.data['data'][1]['ayahs'][i]['text'];
      a.number = response.data['data'][0]['ayahs'][i]['number'];
      a.numberInSurah = response.data['data'][0]['ayahs'][i]['numberInSurah'];
      a.text = response.data['data'][0]['ayahs'][i]['text'];

      list.add(a);
    }
    return list;
  }
}
