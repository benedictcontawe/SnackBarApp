import 'package:flutter/material.dart';

class ChoiceModel {

  ChoiceModel( {
     this.image,
     this.answer,
     required this.isCorrect,
  } ) {

  }

  final String? image, answer;
  final bool isCorrect;
  bool isSelected = false;

  bool isEqual(ChoiceModel otherChoice) {
    return answer == otherChoice.answer;
  }

  Color? get backgroundColour {
    debugPrint("ChoiceModel backgroundColour answer ${this.answer} isSelected ${this.isSelected} isCorrect ${this.isCorrect}");
    if (isSelected == false) {
      return const Color.fromARGB(255, 33, 1, 95);
    } else if(isSelected == true && isCorrect == true) {
      return Colors.green;
    } else if (isSelected == true && isCorrect == false) {
      return Colors.red;
    } else {
      return null;
    }
  }

  @override
  String toString() {
    return "ChoiceModel image-$image answer-$answer isCorrect-$isCorrect isSelected-$isSelected" ?? super.toString();
  }
}