import 'package:get/get.dart';
import 'package:getx_quiz/bindings/base_binding.dart';
import 'package:getx_quiz/controllers/quiz_controller.dart';

class QuizBinding extends BaseBinding {

  @override
  void dependencies() {
    Get.lazyPut<QuizController> ( 
      () => QuizController(
        
      )
    );
  }
}