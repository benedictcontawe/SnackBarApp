import 'package:flutter/material.dart';
import 'package:getx_quiz/views/base_view.dart';

class QuizPage extends BaseView {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: SizedBox (
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
             /*
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            */
            const SizedBox(height: 30),
            /*
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {
                  answerQuestion(answer);
                },
              );
            }
            */
            ],
          ),
        ),
      )
    );
  }

}