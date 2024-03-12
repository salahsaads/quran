class AyatModel {
  final int number;
  final String surahName;
  final String surahNameEn;
  final String type;
  final String text;

  AyatModel(
      {required this.number,
      required this.surahName,
      required this.surahNameEn,
      required this.type,
      required this.text});

  factory AyatModel.fromJson(jasnData) {
    return AyatModel(
        number: jasnData['data']['doc']['number'],
        surahName: jasnData['data']['doc']['surahName'],
        surahNameEn: jasnData['data']['doc']['surahNameEn'],
        type: jasnData['data']['doc']['type'],
        text: jasnData['data']['doc']['text']);
  }
}
