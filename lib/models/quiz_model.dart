import 'package:getx_quiz/models/choice_model.dart';

class QuizModel {

  QuizModel(
    this.question,
    this.choices,
  );

  final String question;
  final List<ChoiceModel> choices;

  bool get isSingleAnswer {
    return choices.where((choice) => choice.isCorrect).length == 1;
  }

  @override
  String toString() {
    return "QuizModel question-$question choices-${choices.join(', ')}" ?? super.toString();
  }
}