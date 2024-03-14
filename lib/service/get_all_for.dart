/*import 'package:quran/model/ayat_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Service_Get {
  Future<List<AyatModel>> GetAll() async {
    List<AyatModel> allVerses = [];

    for (int i = 1; i <= 144; i++) {
      List<AyatModel> verses = await GetSurahVerses(i);
      allVerses.addAll(verses);
    }

    return allVerses;
  }

  Future<List<AyatModel>> GetSurahVerses(int surahNumber) async {
    http.Response response = await http.get(
      Uri.parse('https://quran-hadith-api.onrender.com/api/v1/surahs/$surahNumber'),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      List<AyatModel> verses = List<AyatModel>.from(data['verses'].map((x) => AyatModel.fromJson(x)));
      return verses;
    } else {
      throw Exception('Failed to load verses for Surah $surahNumber');
    }
  }
}
*/