import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quran/model/ayat_model.dart';

class Service_Get {
  Future<AyatModel> Get({required int number}) async {
    http.Response response = await http.get(Uri.parse(
        'https://quran-hadith-api.onrender.com/api/v1/surahs/$number'));

    if (response.hashCode == 200) {
      print('success');
      return AyatModel.fromJson(jsonDecode(response.body));
    } else {
      print('----12--------error');
      throw Exception('error');

      //  throw Exception('there is a problem with status code ${response.statusCode}');
    }
  }
}
