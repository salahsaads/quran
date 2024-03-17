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
        number: jasnData['number'],
        surahName: jasnData['surahName'],
        surahNameEn: jasnData['surahNameEn'],
        type: jasnData['type'],
        text: jasnData['text']);
  }
}
