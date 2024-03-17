class A_Model {
  final int number;

  final String text;

  A_Model({required this.number, required this.text});

  factory A_Model.fromJson(jasnData) {
    return A_Model(number: jasnData['number'], text: jasnData['text']);
  }
}
