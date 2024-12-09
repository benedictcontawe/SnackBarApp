import 'package:get/get.dart';
import 'package:getx_quiz/bindings/quiz_binding.dart';
import 'package:getx_quiz/bindings/splash_binding.dart';
import 'package:getx_quiz/views/menu_page.dart';
import 'package:getx_quiz/views/quiz_page.dart';
import 'package:getx_quiz/views/splash_page.dart';
part 'routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage (
      name: Routes.SPLASH,
      page: () => const SplashPage(),
      binding: SplashBinding(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 3000),
    ),
    GetPage (
      name: Routes.MENU,
      page: () => const MenuPage(),
      binding: null,
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 3000),
    ),
    GetPage (
      name: Routes.QUIZ,
      page: () => const QuizPage(),
      binding: QuizBinding(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 3000),
    ),
  ];
}