import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:getx_quiz/controllers/base_controller.dart';
import 'package:getx_quiz/models/choice_model.dart';
import 'package:getx_quiz/models/quiz_model.dart';

class QuizController extends BaseController {

  final RxList<QuizModel> _quizList = new List<QuizModel>.empty().obs;
  final RxInt _index = 0.obs;

  @override
  void onInit() {
    debugPrint("QuizController onInit");
    _initializeQuizList();
    super.onInit();
  }

  void _initializeQuizList() {
    final ChoiceModel rightChoice = new ChoiceModel(image: null, answer: "right answer", isCorrect: true);
    final ChoiceModel wrongChoice = new ChoiceModel(image: null, answer: "wrong answer", isCorrect: false);
    final List<ChoiceModel> choices = [rightChoice, wrongChoice, wrongChoice];
    choices.shuffle();
    _quizList.add(new QuizModel("question 0", choices,));
    choices.shuffle();
    _quizList.add(new QuizModel("question 1", choices));
    choices.shuffle();
    _quizList.add(new QuizModel("question 2", choices));
    choices.shuffle();
    _quizList.add(new QuizModel("question 3", choices));
  }

  @override
  void onReady() {
    debugPrint("QuizController onReady");
    super.onReady();
  }

  RxInt observeQuizIndex() {
    return _index;
  }

  String observeQuestion() {
    return _quizList[_index.value].question;
  }

  List<ChoiceModel> observeChoices() {
    return _quizList[_index.value].choices;
  }

  void onSelectChoice(ChoiceModel selectedChoice) {
    _quizList[_index.value].choices.forEach((choice) {
      if (choice.isEqual(selectedChoice)) {
        choice.isSelected = true;
      }
    });
    debugPrint("onSelectChoice $selectedChoice ${_quizList[_index.value]}");
    //TODO: Increament _index
  }

  @override
  void onClose() {
    debugPrint("QuizController onClose");
    _quizList.close();
    super.onClose();
  }
}