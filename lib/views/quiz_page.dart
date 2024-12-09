import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_quiz/controllers/quiz_controller.dart';
import 'package:getx_quiz/views/base_view.dart';
import 'package:getx_quiz/widgets/choice_button.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizPage extends BaseView<QuizController> {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Container (
          decoration: getDecoration(),
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Obx(() => 
              Text(
                controller.observeQuestion(),
                style: GoogleFonts.lato (
                  color: const Color.fromARGB(255, 201, 153, 251),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              )
            ),
            ...controller.observeChoices().map((choice) {
              return ChoiceButton (
                text: choice.answer,
                onTap: () => controller.onSelectChoice(choice),
              );
            }),
            ],
          ),
        ),
    );
  }
}