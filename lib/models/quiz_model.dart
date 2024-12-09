import 'package:getx_quiz/models/choice_model.dart';

class QuizModel {

  QuizModel(
    this.question,
    this.choices,
  );

  final String question;
  final List<ChoiceModel> choices;
  List<int>? selectedChoice;
}