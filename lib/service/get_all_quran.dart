import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quran/model/A_model.dart';
import 'package:quran/model/ayat_model.dart';

class Service_Get {
  Future<List<AyatModel>> Get_q() async {
    http.Response response = await http
        .get(Uri.parse('https://quran-hadith-api.onrender.com/api/v1/surahs'));

    var x = jsonDecode(response.body);
    List<AyatModel> data = [];

    for (int i = 0; i < 114; i++) {
      data.add(AyatModel.fromJson(x["data"]["docs"][i]));
    }
    return data;
  }
  //-----------------------------------------------------------------------------
  Future<List<A_Model>> Get_A() async {
    http.Response response = await http
        .get(Uri.parse('https://quran-hadith-api.onrender.com/api/v1/hadiths'));

    var x = jsonDecode(response.body);
    List<A_Model> data = [];

    for (int i = 0; i < 114; i++) {
      data.add(A_Model.fromJson(x["data"]["docs"][i]));
    }
    return data;
  }
}
