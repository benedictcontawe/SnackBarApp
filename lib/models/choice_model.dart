class ChoiceModel {

  ChoiceModel( {
     this.image,
     this.answer,
     required this.isCorrect,
     this.isSelected,
  } );

  final String? image, answer;
  final bool isCorrect;
  bool? isSelected;

  bool isEqual(ChoiceModel otherChoice) {
    return answer == otherChoice.answer;
  }

  @override
  String toString() {
    return "ChoiceModel image-$image answer-$answer isCorrect-$isCorrect isSelected-$isSelected" ?? super.toString();
  }
}