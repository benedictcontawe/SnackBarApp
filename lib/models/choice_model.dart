class ChoiceModel {

  ChoiceModel({
     this.image,
     this.answer,
     required this.isCorrect
  });

  final String? image, answer;
  final bool isCorrect;
}