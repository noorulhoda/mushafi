import 'package:dio/dio.dart';
import 'package:mushafi/model/ayah.model.dart';
import 'package:mushafi/model/surah.model.dart';

class SurahService {
  String baseUrl = "https://api.alquran.cloud/v1";

  Future<List<Surah>> getSurahs() async {
    List<Surah> list = [];
    Response response;
    response = await Dio().get('$baseUrl/surah');
    var data = response.data['data'];

    data.forEach((element) {
      list.add(Surah.fromJson(element));
    });
    return list;
  }
}
