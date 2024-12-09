import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_quiz/views/base_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:getx_quiz/routes/app_pages.dart';

class MenuPage extends BaseView {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Container (
        decoration: getDecoration(),
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.025),
        child: Center (
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Image.asset (
                'assets/quiz-logo.png',
                width: 300,
                color: const Color.fromARGB(150, 255, 255, 255),
              ),
              const SizedBox(height: 80),
              Text (
                'Learn Flutter the fun way!',
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 237, 223, 252),
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 30),
              OutlinedButton.icon(
                onPressed: () => Get.offAndToNamed(Routes.QUIZ),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text('Start Quiz'),
              )
            ],
          ),
        ),
      ),
    );
  }
}