import 'package:get/get.dart';
import 'package:getx_quiz/bindings/base_binding.dart';
import 'package:getx_quiz/controllers/splash_controller.dart';

class SplashBinding extends BaseBinding {

  @override
  void dependencies() {
    Get.put<SplashController> ( 
      SplashController()
    );
  }
}