import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:getx_quiz/controllers/base_controller.dart';
import 'package:getx_quiz/models/choice_model.dart';
import 'package:getx_quiz/models/quiz_model.dart';
import 'package:getx_quiz/routes/app_pages.dart';

class QuizController extends BaseController {

  final RxBool isLoading = true.obs;
  final List<QuizModel> _quizList = new List<QuizModel>.empty(growable: true);
  final RxList<ChoiceModel> choices = new List<ChoiceModel>.empty(growable: false).obs;
  int _index = 0;

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
    final ChoiceModel trueChoice = new ChoiceModel(image: null, answer: "True", isCorrect: true);
    final ChoiceModel falseChoice = new ChoiceModel(image: null, answer: "False", isCorrect: false);
    _quizList.clear();
    _quizList.add(new QuizModel("question 0", [
      ChoiceModel(image: null, answer: "right answer", isCorrect: true), 
      ChoiceModel(image: null, answer: "wrong answer", isCorrect: false), 
      ChoiceModel(image: null, answer: "wrong answer", isCorrect: false)
    ],));
    _quizList.add(new QuizModel("question 1", [
      wrongChoice, 
      rightChoice, 
      wrongChoice,
    ]));
    _quizList.add(new QuizModel("question 2", [
      wrongChoice, 
      wrongChoice, 
      rightChoice,
    ]));
    _quizList.add(new QuizModel("question 3", [
      wrongChoice, 
      rightChoice, 
      wrongChoice,
    ]));
    _quizList.add(new QuizModel("question 4", [
      trueChoice, 
      falseChoice,
    ]));
  }

  @override
  void onReady() {
    debugPrint("QuizController onReady");
    choices(_quizList[_index].choices);
    super.onReady();
    isLoading(false);
  }

  String get question {
  if (_index >= 0 && _index < _quizList.length) {
    return _quizList[_index].question;
  } else {
    return '';
  }
}

  void onSelectChoice(ChoiceModel selectedChoice, int selectedChoiceIndex) async{
    try {
      debugPrint("onSelectChoice $selectedChoice try ${_index} $selectedChoiceIndex");
      isLoading(true);
      _quizList[_index].choices[selectedChoiceIndex].isSelected = true;
      /*
      for (int index = 0; index < _quizList[_index].choices.length; index++) {
        if (index == selectedChoiceIndex) {
          _quizList[_index].choices[index].isSelected = true;
          choices[index].isSelected = true;
        } else if (index != selectedChoiceIndex) {
          _quizList[_index].choices[index].isSelected = false;
          choices[index].isSelected = false;
        }
        debugPrint("onSelectChoice for loop $index ${_quizList[_index].choices[index]}");
      }
      */
      await Future.delayed(const Duration(milliseconds: 1000));
      //choices.clear();
      //choices();
      //choices.refresh();
      await Future.delayed(const Duration(milliseconds: 250));
      isLoading(false);
      await Future.delayed(const Duration(milliseconds: 10000));
      //TODO: Add animation when right ChoiceButton is green when wrong ChoiceButton is red
      debugPrint("onSelectChoice $selectedChoice ${_quizList[_index]}");
      //TODO: if all answered go to Routes.RESULTS then display the scores 
      isLoading(true);
      await Future.delayed(const Duration(milliseconds: 500));
      if (_index < _quizList.length - 1) {
        _onNextQuestion();
      } else {
        _onLaunchResults();
      }
    } catch(exception) {
      debugPrint("onSelectChoice catch exception $exception");
    } finally {
      debugPrint("onSelectChoice finally");
      isLoading(false);
    }
  }

  void _onNextQuestion() {
    _index++;
    _quizList[_index].choices.forEach((choice) {
      choice.isSelected = false;
    });
    choices(_quizList[_index].choices);
  }

  void _onLaunchResults() {
    Get.offNamed(Routes.RESULTS);
  }

  @override
  void onClose() {
    debugPrint("QuizController onClose");
    _quizList.clear();
    super.onClose();
  }
}