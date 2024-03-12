import 'package:quran/model/ayat_model.dart';
import 'package:quran/service/get_all_quran.dart';

class LoopGet {
  Future<List<AyatModel>> LoopGetALL() async {
    List<AyatModel> ayat = [];
    for (int i = 1; i <= 144; i++) {
      AyatModel response = await Service_Get().Get(number: i);
      ayat.add(response);
    }
    return ayat;
  }
}
