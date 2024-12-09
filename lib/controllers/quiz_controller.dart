import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:getx_quiz/controllers/base_controller.dart';
import 'package:getx_quiz/models/choice_model.dart';
import 'package:getx_quiz/models/quiz_model.dart';

class QuizController extends BaseController {

  final RxBool _isLoading = false.obs;
  final RxList<QuizModel> _quizList = new List<QuizModel>.empty().obs;
  final RxList<ChoiceModel> _choices = new List<ChoiceModel>.empty().obs;
  final RxInt _index = 0.obs;

  @override
  void onInit() {
    debugPrint("QuizController onInit");
    _initializeQuizList();
    super.onInit();
  }

  void _initializeQuizList() {
    debugPrint("QuizController _initializeQuizList");
    final ChoiceModel rightChoice = new ChoiceModel(image: null, answer: "right answer", isCorrect: true);
    final ChoiceModel wrongChoice = new ChoiceModel(image: null, answer: "wrong answer", isCorrect: false);
    List<ChoiceModel> choices = [rightChoice, wrongChoice, wrongChoice];
    _quizList.add(new QuizModel("question 0", choices,));
    choices = [wrongChoice, wrongChoice, rightChoice];
    _quizList.add(new QuizModel("question 1", choices));
    choices = [wrongChoice, rightChoice, wrongChoice];
    _quizList.add(new QuizModel("question 2", choices));
    choices = [rightChoice, wrongChoice, wrongChoice];
    _quizList.add(new QuizModel("question 3", choices));
  }

  @override
  void onReady() {
    debugPrint("QuizController onReady");
    _choices(_quizList[_index.value].choices);
    super.onReady();
  }

  RxInt observeQuizIndex() {
    return _index;
  }

  String observeQuestion() {
    return _quizList[_index.value].question;
  }

  RxList<ChoiceModel> observeChoices() {
    return _choices;
  }

  void onSelectChoice(ChoiceModel selectedChoice) async{
    try {
      _isLoading(true);
      _quizList[_index.value].choices.forEach((choice) {
        if (choice.isEqual(selectedChoice)) {
          choice.isSelected = true;
        }
      });
      debugPrint("onSelectChoice $selectedChoice ${_quizList[_index.value]}");
      await Future.delayed(const Duration(milliseconds: 500));
      _index.value++;
      _choices(_quizList[_index.value].choices);
    } catch(exception) {

    } finally {
      _isLoading(false);
    }
  }

  RxBool isLoading() {
    return _isLoading;
  }

  @override
  void onClose() {
    debugPrint("QuizController onClose");
    _quizList.close();
    super.onClose();
  }
}